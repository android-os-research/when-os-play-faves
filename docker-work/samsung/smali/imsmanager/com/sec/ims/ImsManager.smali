.class public Lcom/sec/ims/ImsManager;
.super Ljava/lang/Object;
.source "ImsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsManager$EpdgListener;,
        Lcom/sec/ims/ImsManager$DmConfigEventRelay;,
        Lcom/sec/ims/ImsManager$ConnectionListener;
    }
.end annotation


# static fields
.field private static final IMS_API_VERSION:I = 0x2

.field private static final IMS_PLATFORM_VERSION:I = 0xebf0

.field public static final INTENT_ACTION_IMSSERVICE_RESTART:Ljava/lang/String; = "com.sec.ims.imsmanager.RESTART"

.field public static final INTENT_ACTION_RCS_ENABLE:Ljava/lang/String; = "android.intent.action.RCS_ENABLE"

.field public static final INTENT_PARAM_IPME_ENABLE:Ljava/lang/String; = "IPME_ENABLE"

.field public static final INTENT_PARAM_RCS_ENABLE:Ljava/lang/String; = "RCS_ENABLE"

.field public static final INTENT_PARAM_RCS_ENABLE_TYPE:Ljava/lang/String; = "action_type"

.field public static final INTENT_VALUE_RCS_ENABLE_TYPE_ALL_RCS:Ljava/lang/String; = "ALL_RCS"

.field public static final INTENT_VALUE_RCS_ENABLE_TYPE_IPME:Ljava/lang/String; = "IPME"

.field static final LOG_TAG:Ljava/lang/String; = "legacyImsManager"

.field private static final SERVICE_NAME:Ljava/lang/String; = "secims"

.field public static final VOLTE:Ljava/lang/String; = "volte"


# instance fields
.field private final mAutoConfigurationListener:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IAutoConfigurationListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCmcRegListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDialogListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IDialogEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEpdgListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IEpdgListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

.field mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

.field private final mImSessionListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/im/IImSessionListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

.field private final mOngoingFtEventListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/ft/IImsOngoingFtEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I

.field private final mRegListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IImsRegistrationListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartReceiver:Landroid/content/BroadcastReceiver;

.field private final mRttListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/IRttEventListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBound:Z

.field private final mSimMobilityStatusListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/ISimMobilityStatusListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/sec/ims/volte2/IImsVideoListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/ims/ImsManager;)I
    .registers 1

    iget p0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetImsService(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/IImsService;
    .registers 1

    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monConnectService(Lcom/sec/ims/ImsManager;Lcom/sec/ims/IImsService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/sec/ims/ImsManager;->onConnectService(Lcom/sec/ims/IImsService;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/ims/ImsManager;->mServiceBound:Z

    .line 136
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    .line 137
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    .line 138
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    .line 139
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    .line 140
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    .line 141
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    .line 142
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    .line 143
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    .line 144
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    .line 145
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 147
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    .line 904
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    .line 905
    new-instance v1, Lcom/sec/ims/ImsManager$2;

    invoke-direct {v1, p0}, Lcom/sec/ims/ImsManager$2;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v1, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    .line 194
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 195
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/ims/ImsManager;->mServiceBound:Z

    .line 136
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    .line 137
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    .line 138
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    .line 139
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    .line 140
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    .line 141
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    .line 142
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    .line 143
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    .line 144
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    .line 145
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 147
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    .line 904
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    .line 905
    new-instance v0, Lcom/sec/ims/ImsManager$2;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$2;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    .line 224
    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 225
    iput-object p2, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 226
    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/sec/ims/ImsManager$ConnectionListener;
    .param p3, "phoneId"    # I

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 134
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/ims/ImsManager;->mServiceBound:Z

    .line 136
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    .line 137
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    .line 138
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    .line 139
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    .line 140
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    .line 141
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    .line 142
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    .line 143
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    .line 144
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    .line 145
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 147
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 148
    iput v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    .line 904
    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    .line 905
    new-instance v0, Lcom/sec/ims/ImsManager$2;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$2;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    .line 253
    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    .line 255
    iput p3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    .line 256
    return-void
.end method

.method public static getImsApiVersion()I
    .registers 2

    .line 2416
    const-string v0, "legacyImsManager"

    const-string v1, "Current IMS API Version is 2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    const/4 v0, 0x2

    return v0
.end method

.method private getImsService()Lcom/sec/ims/IImsService;
    .registers 2

    .line 263
    const-string v0, "secims"

    invoke-direct {p0, v0}, Lcom/sec/ims/ImsManager;->getSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsService;

    move-result-object v0

    return-object v0
.end method

.method public static getImsVersion()I
    .registers 2

    .line 2405
    const-string v0, "legacyImsManager"

    const-string v1, "Current IMS Platform Version is 60400"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    const v0, 0xebf0

    return v0
.end method

.method private getSystemService(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "binder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 270
    .local v1, "sm":Ljava/lang/Class;
    :try_start_2
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 271
    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_17} :catch_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_17} :catch_52
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_17} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_17} :catch_48

    .line 272
    .local v2, "getService":Ljava/lang/reflect/Method;
    const-string v4, "legacyImsManager"

    if-eqz v2, :cond_42

    .line 273
    :try_start_1b
    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 274
    .local v3, "result":Ljava/lang/Object;
    if-eqz v3, :cond_2a

    .line 275
    move-object v4, v3

    check-cast v4, Landroid/os/IBinder;

    move-object v0, v4

    .line 276
    return-object v0

    .line 278
    :cond_2a
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

    .line 280
    nop

    .end local v3    # "result":Ljava/lang/Object;
    goto :goto_5b

    .line 281
    :cond_42
    const-string v3, "Failed to reflect method getService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_47} :catch_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1b .. :try_end_47} :catch_52
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_47} :catch_4d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_47} :catch_48

    goto :goto_5b

    .line 289
    .end local v2    # "getService":Ljava/lang/reflect/Method;
    :catch_48
    move-exception v2

    .line 290
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_5c

    .line 287
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4d
    move-exception v2

    .line 288
    .local v2, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_5b

    .line 285
    :catch_52
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    goto :goto_5b

    .line 283
    :catch_57
    move-exception v2

    .line 284
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 291
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :goto_5b
    nop

    .line 292
    :goto_5c
    return-object v0
.end method

.method private onConnectService(Lcom/sec/ims/IImsService;)V
    .registers 3
    .param p1, "imsService"    # Lcom/sec/ims/IImsService;

    .line 365
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 366
    invoke-direct {p0, p1}, Lcom/sec/ims/ImsManager;->registerPreviousListeners(Lcom/sec/ims/IImsService;)V

    .line 367
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    invoke-interface {v0}, Lcom/sec/ims/ImsManager$ConnectionListener;->onConnected()V

    .line 369
    :cond_e
    return-void
.end method

.method private registerPreviousListeners(Lcom/sec/ims/IImsService;)V
    .registers 6
    .param p1, "imsService"    # Lcom/sec/ims/IImsService;

    .line 296
    monitor-enter p0

    .line 297
    :try_start_1
    const-string v0, "legacyImsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerPreviousListeners:  mRegListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    .line 298
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDialogListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    .line 299
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVideoListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mVideoListeners:Landroid/util/ArrayMap;

    .line 300
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mImSessionListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    .line 301
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOngoingFtEventListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    .line 302
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAutoConfigurationListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    .line 303
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSimMobilityStatusListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    .line 304
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEpdgListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    .line 305
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCmcRegListeners:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    .line 306
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9f
    .catchall {:try_start_1 .. :try_end_9f} :catchall_1e9

    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, "token":Ljava/lang/String;
    :try_start_a0
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IImsRegistrationListener;

    .line 310
    .local v2, "tempListener":Lcom/sec/ims/IImsRegistrationListener;
    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v2, v3}, Lcom/sec/ims/IImsService;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 311
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c8

    .line 312
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .end local v2    # "tempListener":Lcom/sec/ims/IImsRegistrationListener;
    :cond_c8
    goto :goto_aa

    .line 315
    :cond_c9
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IDialogEventListener;

    .line 316
    .local v2, "tempListener":Lcom/sec/ims/IDialogEventListener;
    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v3, v2}, Lcom/sec/ims/IImsService;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f1

    .line 318
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .end local v2    # "tempListener":Lcom/sec/ims/IDialogEventListener;
    :cond_f1
    goto :goto_d3

    .line 321
    :cond_f2
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_119

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/im/IImSessionListener;

    .line 322
    .local v2, "tempListener":Lcom/sec/ims/im/IImSessionListener;
    invoke-interface {p1, v2}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 323
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_118

    .line 324
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .end local v2    # "tempListener":Lcom/sec/ims/im/IImSessionListener;
    :cond_118
    goto :goto_fc

    .line 327
    :cond_119
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_123
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_140

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 328
    .local v2, "tempListener":Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    invoke-interface {p1, v2}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 329
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13f

    .line 330
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v2    # "tempListener":Lcom/sec/ims/ft/IImsOngoingFtEventListener;
    :cond_13f
    goto :goto_123

    .line 333
    :cond_140
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_169

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IAutoConfigurationListener;

    .line 334
    .local v2, "tempListener":Lcom/sec/ims/IAutoConfigurationListener;
    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v2, v3}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 335
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_168

    .line 336
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .end local v2    # "tempListener":Lcom/sec/ims/IAutoConfigurationListener;
    :cond_168
    goto :goto_14a

    .line 339
    :cond_169
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_173
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_192

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ISimMobilityStatusListener;

    .line 340
    .local v2, "tempListener":Lcom/sec/ims/ISimMobilityStatusListener;
    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v2, v3}, Lcom/sec/ims/IImsService;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_191

    .line 342
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .end local v2    # "tempListener":Lcom/sec/ims/ISimMobilityStatusListener;
    :cond_191
    goto :goto_173

    .line 345
    :cond_192
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IEpdgListener;

    .line 346
    .local v2, "tempListener":Lcom/sec/ims/IEpdgListener;
    invoke-interface {p1, v2}, Lcom/sec/ims/IImsService;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 347
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b8

    .line 348
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .end local v2    # "tempListener":Lcom/sec/ims/IEpdgListener;
    :cond_1b8
    goto :goto_19c

    .line 351
    :cond_1b9
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IImsRegistrationListener;

    .line 352
    .local v2, "tempListener":Lcom/sec/ims/IImsRegistrationListener;
    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {p1, v2, v3}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 353
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e1

    .line 354
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e1
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_1e1} :catch_1e3
    .catchall {:try_start_a0 .. :try_end_1e1} :catchall_1e9

    .line 356
    .end local v2    # "tempListener":Lcom/sec/ims/IImsRegistrationListener;
    :cond_1e1
    goto :goto_1c3

    .line 360
    :cond_1e2
    goto :goto_1e7

    .line 358
    :catch_1e3
    move-exception v1

    .line 359
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1e4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 361
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1e7
    monitor-exit p0

    .line 362
    return-void

    .line 361
    :catchall_1e9
    move-exception v0

    monitor-exit p0
    :try_end_1eb
    .catchall {:try_start_1e4 .. :try_end_1eb} :catchall_1e9

    throw v0
.end method


# virtual methods
.method public changeEPDGAudioPath(I)V
    .registers 7
    .param p1, "direction"    # I

    .line 2013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeEPDGAudioPath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2015
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_54

    .line 2016
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2017
    return-void

    .line 2021
    :cond_54
    :try_start_54
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->changeAudioPathForSlot(II)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_5a

    .line 2024
    goto :goto_5e

    .line 2022
    :catch_5a
    move-exception v1

    .line 2023
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2025
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5e
    return-void
.end method

.method public connectService()V
    .registers 4

    .line 377
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_3c

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Register Receiver for Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Lcom/sec/ims/ImsManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsManager$1;-><init>(Lcom/sec/ims/ImsManager;)V

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 395
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_3c
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 396
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    invoke-direct {p0, v0}, Lcom/sec/ims/ImsManager;->onConnectService(Lcom/sec/ims/IImsService;)V

    .line 397
    return-void
.end method

.method public deregisterAdhocProfile(I)V
    .registers 7
    .param p1, "id"    # I

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deregisterAdhocProfile: id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 605
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_54

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deregisterAdhocProfile: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-void

    .line 611
    :cond_54
    :try_start_54
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->deregisterAdhocProfileByPhoneId(II)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_5a

    .line 614
    goto :goto_5e

    .line 612
    :catch_5a
    move-exception v1

    .line 613
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 615
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5e
    return-void
.end method

.method public deregisterProfile(Ljava/util/List;Z)V
    .registers 6
    .param p2, "disconnectPdn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 844
    .local p1, "profileIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 845
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_e

    .line 846
    const-string v1, "legacyImsManager"

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    return-void

    .line 851
    :cond_e
    :try_start_e
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/IImsService;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 854
    goto :goto_18

    .line 852
    :catch_14
    move-exception v1

    .line 853
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 855
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public disconnectService()V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_43

    .line 407
    :try_start_4
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_9} :catch_a

    .line 410
    goto :goto_40

    .line 408
    :catch_a
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterReceiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 414
    :cond_43
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mListener:Lcom/sec/ims/ImsManager$ConnectionListener;

    if-eqz v0, :cond_4a

    .line 415
    invoke-interface {v0}, Lcom/sec/ims/ImsManager$ConnectionListener;->onDisconnected()V

    .line 417
    :cond_4a
    return-void
.end method

.method public doDump()V
    .registers 4

    .line 2336
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2337
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_27

    .line 2338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    return-void

    .line 2343
    :cond_27
    :try_start_27
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->dump()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 2346
    goto :goto_2f

    .line 2344
    :catch_2b
    move-exception v1

    .line 2345
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2347
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method public enableIpme(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

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

    .line 992
    invoke-virtual {p0, p1}, Lcom/sec/ims/ImsManager;->enableRcs(Z)V

    .line 993
    return-void
.end method

.method public enableRcs(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 977
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    :try_start_35
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->enableRcsByPhoneId(ZI)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_3a} :catch_3b

    .line 980
    goto :goto_3f

    .line 978
    :catch_3b
    move-exception v1

    .line 979
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 981
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3f
    return-void
.end method

.method public enableService(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableService: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1112
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_5e

    .line 1113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enableService: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-void

    .line 1118
    :cond_5e
    :try_start_5e
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/IImsService;->enableServiceByPhoneId(Ljava/lang/String;ZI)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_63} :catch_64

    .line 1121
    goto :goto_68

    .line 1119
    :catch_64
    move-exception v1

    .line 1120
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1122
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_68
    return-void
.end method

.method public enableVoLte(Z)V
    .registers 5
    .param p1, "enable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVoLte: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "legacyImsManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 812
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_24

    .line 813
    const-string v2, "enableVoLte: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 817
    :cond_24
    :try_start_24
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->enableVoLte(Z)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    .line 820
    goto :goto_2c

    .line 818
    :catch_28
    move-exception v1

    .line 819
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 821
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_2c
    return-void
.end method

.method public finishDmConfig(I)V
    .registers 6
    .param p1, "transactionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "finishDmConfig"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2384
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_43

    .line 2385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    return-void

    .line 2390
    :cond_43
    :try_start_43
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->finishDmConfig(II)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49

    .line 2393
    goto :goto_4d

    .line 2391
    :catch_49
    move-exception v1

    .line 2392
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2394
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-void
.end method

.method public getCallCount()[I
    .registers 5

    .line 2086
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2087
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 2088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    return-object v1

    .line 2093
    :cond_28
    const/4 v2, -0x1

    :try_start_29
    invoke-interface {v0, v2}, Lcom/sec/ims/IImsService;->getCallCount(I)[I

    move-result-object v1
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_2e

    return-object v1

    .line 2094
    :catch_2e
    move-exception v2

    .line 2095
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2097
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getCallCount(I)[I
    .registers 6
    .param p1, "phoneId"    # I

    .line 2110
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2111
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 2112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    return-object v1

    .line 2117
    :cond_28
    :try_start_28
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->getCallCount(I)[I

    move-result-object v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2c} :catch_2d

    return-object v1

    .line 2118
    :catch_2d
    move-exception v2

    .line 2119
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2121
    .end local v2    # "e":Landroid/os/RemoteException;
    return-object v1
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .registers 6

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getCmcCallInfo"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 488
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getCmcCallInfo: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return-object v3

    .line 494
    :cond_44
    :try_start_44
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_48} :catch_49

    return-object v1

    .line 495
    :catch_49
    move-exception v1

    .line 496
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 498
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;
    .registers 7
    .param p1, "fields"    # [Ljava/lang/String;

    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getConfigValues"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2217
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 2218
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    return-object v3

    .line 2223
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return-object v1

    .line 2224
    :catch_4b
    move-exception v1

    .line 2225
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2227
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;
    .registers 7

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getCurrentProfile"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1699
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 1700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    return-object v3

    .line 1705
    :cond_44
    :try_start_44
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_48} :catch_49

    .line 1706
    .local v1, "profiles":[Lcom/sec/ims/settings/ImsProfile;
    return-object v1

    .line 1707
    .end local v1    # "profiles":[Lcom/sec/ims/settings/ImsProfile;
    :catch_49
    move-exception v4

    .line 1708
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to get profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    return-object v3
.end method

.method public getCurrentProfile(I)[Lcom/sec/ims/settings/ImsProfile;
    .registers 8
    .param p1, "phoneId"    # I

    .line 1724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getCurrentProfile"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1727
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 1728
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return-object v3

    .line 1733
    :cond_44
    :try_start_44
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_48} :catch_49

    .line 1734
    .local v1, "profiles":[Lcom/sec/ims/settings/ImsProfile;
    return-object v1

    .line 1735
    .end local v1    # "profiles":[Lcom/sec/ims/settings/ImsProfile;
    :catch_49
    move-exception v4

    .line 1736
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to get profiles"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    return-object v3
.end method

.method public getEpsFbCallCount(I)I
    .registers 7
    .param p1, "phoneId"    # I

    .line 2125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getEpsFbCallCount"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2127
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, -0x1

    if-nez v0, :cond_44

    .line 2128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    return v3

    .line 2133
    :cond_44
    :try_start_44
    invoke-interface {v0, v3}, Lcom/sec/ims/IImsService;->getEpsFbCallCount(I)I

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_48} :catch_49

    return v1

    .line 2134
    :catch_49
    move-exception v1

    .line 2135
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2137
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public getLastDialogEvent()Lcom/sec/ims/DialogEvent;
    .registers 6

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getLastDialogEvent"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1673
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 1674
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    return-object v3

    .line 1679
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return-object v1

    .line 1680
    :catch_4b
    move-exception v1

    .line 1681
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1683
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getNrSaCallCount(I)I
    .registers 7
    .param p1, "phoneId"    # I

    .line 2141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getNrSaCallCount"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2142
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2143
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, -0x1

    if-nez v0, :cond_44

    .line 2144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    return v3

    .line 2149
    :cond_44
    :try_start_44
    invoke-interface {v0, v3}, Lcom/sec/ims/IImsService;->getNrSaCallCount(I)I

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_48} :catch_49

    return v1

    .line 2150
    :catch_49
    move-exception v1

    .line 2151
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2153
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public getPhoneId()I
    .registers 2

    .line 259
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    return v0
.end method

.method public getRcsProfileType()Ljava/lang/String;
    .registers 7

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRcsProfileType"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    const-string v0, ""

    .line 1754
    .local v0, "rcsProfile":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v3

    .line 1755
    .local v3, "imsService":Lcom/sec/ims/IImsService;
    if-nez v3, :cond_45

    .line 1756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    return-object v0

    .line 1761
    :cond_45
    :try_start_45
    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/ims/IImsService;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4d

    move-object v0, v1

    .line 1764
    goto :goto_6a

    .line 1762
    :catch_4d
    move-exception v4

    .line 1763
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fail to get profile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_6a
    return-object v0
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .registers 6

    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRegistrationInfo"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 527
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRegistrationInfo: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-object v3

    .line 533
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return-object v1

    .line 534
    :catch_4b
    move-exception v1

    .line 535
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 537
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;
    .registers 7
    .param p1, "serviceType"    # Ljava/lang/String;

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getRegistrationInfoByServiceType"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 560
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getRegistrationInfoByServiceType: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    return-object v3

    .line 566
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return-object v1

    .line 567
    :catch_4b
    move-exception v1

    .line 568
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 570
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getRttMode()I
    .registers 5

    .line 1480
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1481
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 1482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return v1

    .line 1487
    :cond_28
    :try_start_28
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/ims/IImsService;->getRttMode(I)I

    move-result v1
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2e} :catch_2f

    return v1

    .line 1488
    :catch_2f
    move-exception v2

    .line 1489
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1491
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public getVideocallType()I
    .registers 6

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getVideocallType"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2185
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x1

    if-nez v0, :cond_44

    .line 2186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    return v3

    .line 2191
    :cond_44
    :try_start_44
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->getVideocallType()I

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_48} :catch_49

    return v1

    .line 2192
    :catch_49
    move-exception v1

    .line 2193
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2195
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public hasCrossSimImsService(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 2696
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2697
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2698
    const-string v2, "legacyImsManager"

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    return v1

    .line 2702
    :cond_f
    :try_start_f
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->hasCrossSimImsService(I)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return v1

    .line 2703
    :catch_14
    move-exception v2

    .line 2704
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2705
    return v1
.end method

.method public hasVoLteSim()Z
    .registers 6

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "hasVoLteSim"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2319
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 2320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    return v3

    .line 2325
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->hasVoLteSimByPhoneId(I)Z

    move-result v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return v1

    .line 2326
    :catch_4b
    move-exception v1

    .line 2327
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2329
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public isCmcEmergencyCallSupported()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2579
    const-string v0, "legacyImsManager"

    const-string v1, "isCmcEmergencyCallSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    .line 2581
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v1, :cond_14

    .line 2585
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v0}, Lcom/sec/ims/IImsService;->isCmcEmergencyCallSupported(I)Z

    move-result v0

    return v0

    .line 2582
    :cond_14
    const-string v2, "isCmcEmergencyCallSupported: Not initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public isCmcEmergencyNumber(Ljava/lang/String;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;

    .line 2597
    const-string v0, "legacyImsManager"

    const-string v1, "isCmcEmergencyNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    .line 2599
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 2600
    const-string v3, "isCmcEmergencyNumber: Not initialized."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    return v2

    .line 2605
    :cond_14
    :try_start_14
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, p1, v0}, Lcom/sec/ims/IImsService;->isCmcEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v0

    .line 2606
    :catch_1b
    move-exception v0

    .line 2607
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2608
    return v2
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;

    .line 2623
    const-string v0, "legacyImsManager"

    const-string v1, "isCmcPotentialEmergencyNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2624
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    .line 2625
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 2626
    const-string v3, "isCmcPotentialEmergencyNumber: Not initialized."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    return v2

    .line 2631
    :cond_14
    :try_start_14
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, p1, v0}, Lcom/sec/ims/IImsService;->isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v0

    .line 2632
    :catch_1b
    move-exception v0

    .line 2633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2634
    return v2
.end method

.method public isCrossSimCallingRegistered(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 2682
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2683
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2684
    const-string v2, "legacyImsManager"

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    return v1

    .line 2688
    :cond_f
    :try_start_f
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->isCrossSimCallingRegistered(I)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return v1

    .line 2689
    :catch_14
    move-exception v2

    .line 2690
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2691
    return v1
.end method

.method public isCrossSimCallingSupported()Z
    .registers 5

    .line 2724
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2725
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2726
    const-string v2, "legacyImsManager"

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2727
    return v1

    .line 2730
    :cond_f
    :try_start_f
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->isCrossSimCallingSupported()Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return v1

    .line 2731
    :catch_14
    move-exception v2

    .line 2732
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2733
    return v1
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .registers 6
    .param p1, "phoneId"    # I

    .line 2710
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2711
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2712
    const-string v2, "legacyImsManager"

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    return v1

    .line 2716
    :cond_f
    :try_start_f
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return v1

    .line 2717
    :catch_14
    move-exception v2

    .line 2718
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2719
    return v1
.end method

.method public isCrossSimPermanentBlocked()Z
    .registers 5

    .line 2668
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2669
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2670
    const-string v2, "legacyImsManager"

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2671
    return v1

    .line 2674
    :cond_f
    :try_start_f
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v2}, Lcom/sec/ims/IImsService;->isCrossSimPermanentBlocked(I)Z

    move-result v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_15} :catch_16

    return v1

    .line 2675
    :catch_16
    move-exception v2

    .line 2676
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2677
    return v1
.end method

.method public isForbidden()Z
    .registers 6

    .line 2295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isForbidden"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2297
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 2298
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    return v3

    .line 2303
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->isForbiddenByPhoneId(I)Z

    move-result v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return v1

    .line 2304
    :catch_4b
    move-exception v1

    .line 2305
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2307
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public isIpmeEnabled()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isIpmeEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {p0}, Lcom/sec/ims/ImsManager;->isRcsEnabled()Z

    move-result v0

    return v0
.end method

.method public isRcsEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 924
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/ims/ImsManager;->isRcsEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isRcsEnabled(Z)Z
    .registers 13
    .param p1, "needAutoConfigCheck"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 934
    const-string v0, "]"

    const-string v1, "legacyImsManager["

    new-instance v2, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    .line 935
    .local v2, "rcsConfig":Lcom/sec/ims/settings/RcsConfigurationReader;
    const/4 v3, 0x0

    .line 936
    .local v3, "version":I
    const/4 v4, 0x0

    .line 937
    .local v4, "rcsEnabled":Z
    const/4 v5, 0x0

    .line 940
    .local v5, "autoconfCompleted":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_10
    iget-object v8, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "rcs_user_setting"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8
    :try_end_1c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_10 .. :try_end_1c} :catch_23

    if-ne v8, v7, :cond_20

    move v8, v7

    goto :goto_21

    :cond_20
    move v8, v6

    :goto_21
    move v4, v8

    .line 944
    goto :goto_43

    .line 941
    :catch_23
    move-exception v8

    .line 942
    .local v8, "e":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isRcsEnabled: rcs_user_setting is not exist."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    invoke-virtual {v8}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 946
    .end local v8    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_43
    if-nez p1, :cond_46

    .line 947
    return v4

    .line 951
    :cond_46
    :try_start_46
    const-string v8, "root/vers/version"

    invoke-virtual {v2, v8}, Lcom/sec/ims/settings/RcsConfigurationReader;->getInt(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    .line 952
    const-string v8, "true"

    const-string v9, "info/completed"

    .line 953
    invoke-virtual {v2, v9}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 952
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v5, v8

    .line 955
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRcsEnabled: version "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " autoConfigComplete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/IllegalStateException; {:try_start_46 .. :try_end_91} :catch_92

    .line 960
    goto :goto_b2

    .line 957
    :catch_92
    move-exception v8

    .line 958
    .local v8, "e":Ljava/lang/IllegalStateException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v9, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "isRcsEnabled: AutoConfiguration is not completed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 962
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :goto_b2
    if-eqz v4, :cond_b9

    if-eqz v5, :cond_b8

    if-lez v3, :cond_b9

    :cond_b8
    move v6, v7

    :cond_b9
    return v6
.end method

.method public isRttCall(I)Z
    .registers 6
    .param p1, "sessionId"    # I

    .line 1365
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1366
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    return v1

    .line 1372
    :cond_28
    :try_start_28
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->isRttCall(I)Z

    move-result v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2c} :catch_2d

    return v1

    .line 1373
    :catch_2d
    move-exception v2

    .line 1374
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1376
    .end local v2    # "e":Landroid/os/RemoteException;
    return v1
.end method

.method public isServiceAvailable(Ljava/lang/String;)Z
    .registers 7
    .param p1, "service"    # Ljava/lang/String;

    .line 1063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

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

    .line 1064
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1065
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_55

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isServiceAvailable: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    return v3

    .line 1071
    :cond_55
    const/4 v1, -0x1

    :try_start_56
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/ims/IImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5c} :catch_5d

    return v1

    .line 1072
    :catch_5d
    move-exception v1

    .line 1073
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1075
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public isServiceAvailable(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "rat"    # I

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

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

    .line 1090
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1091
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_5f

    .line 1092
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isServiceAvailable: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    return v3

    .line 1097
    :cond_5f
    :try_start_5f
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/IImsService;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_65} :catch_66

    return v1

    .line 1098
    :catch_66
    move-exception v1

    .line 1099
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1101
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public isServiceEnabled(Ljava/lang/String;)Z
    .registers 11
    .param p1, "service"    # Ljava/lang/String;

    .line 1009
    const/4 v0, 0x0

    .line 1011
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1012
    const-string v1, "content://com.sec.ims.settings/imsswitch"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1013
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v4, v8

    .line 1011
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1015
    .local v2, "c":Landroid/database/Cursor;
    const-string v3, "legacyImsManager"

    if-eqz v2, :cond_94

    :try_start_3f
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_92

    if-nez v4, :cond_46

    goto :goto_94

    .line 1021
    :cond_46
    :try_start_46
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_85

    .line 1022
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1023
    .local v4, "name":Ljava/lang/String;
    const-string v5, "enabled"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1024
    .local v5, "value":I
    if-ne v5, v1, :cond_63

    goto :goto_64

    :cond_63
    move v1, v8

    :goto_64
    move v0, v1

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isServiceEnabled: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_85} :catch_86
    .catchall {:try_start_46 .. :try_end_85} :catchall_92

    .line 1029
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_85
    goto :goto_8c

    .line 1027
    :catch_86
    move-exception v1

    .line 1028
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    :try_start_87
    const-string v4, "isServiceEnabled: false due to IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_87 .. :try_end_8c} :catchall_92

    .line 1030
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_8c
    if-eqz v2, :cond_91

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1032
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_91
    return v0

    .line 1011
    .restart local v2    # "c":Landroid/database/Cursor;
    :catchall_92
    move-exception v1

    goto :goto_a0

    .line 1016
    :cond_94
    :goto_94
    :try_start_94
    const-string v1, "isServiceEnabled: not found"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_94 .. :try_end_99} :catchall_92

    .line 1017
    nop

    .line 1030
    if-eqz v2, :cond_9f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1017
    :cond_9f
    return v8

    .line 1011
    :goto_a0
    if-eqz v2, :cond_aa

    :try_start_a2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_a5
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_a6

    goto :goto_aa

    :catchall_a6
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_aa
    :goto_aa
    throw v1
.end method

.method public isSupportVoWiFiDisable5GSA()Z
    .registers 5

    .line 2639
    const-string v0, "legacyImsManager"

    const-string v1, "isSupportVoWiFiDisable5GSA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    .line 2641
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 2642
    const-string v3, "isSupportVoWiFiDisable5GSA: Not initialized."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    return v2

    .line 2647
    :cond_14
    :try_start_14
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v0}, Lcom/sec/ims/IImsService;->isSupportVoWiFiDisable5GSA(I)Z

    move-result v0
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b

    return v0

    .line 2648
    :catch_1b
    move-exception v0

    .line 2649
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2650
    return v2
.end method

.method public isVoLteEnabled()Z
    .registers 10

    .line 779
    const/4 v0, 0x0

    .line 781
    .local v0, "enabled":Z
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 782
    const-string v1, "content://com.sec.ims.settings/imsswitch"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simslot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    .line 783
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v1, "volte"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    .line 781
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 785
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const-string v3, "]"

    const-string v4, "legacyImsManager["

    if-eqz v1, :cond_c8

    :try_start_46
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_eb

    if-nez v5, :cond_4e

    goto/16 :goto_c8

    .line 791
    :cond_4e
    :try_start_4e
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 792
    const-string v5, "name"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 793
    .local v5, "name":Ljava/lang/String;
    const-string v6, "enabled"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 794
    .local v6, "value":I
    const/4 v7, 0x1

    if-ne v6, v7, :cond_6c

    move v2, v7

    :cond_6c
    move v0, v2

    .line 795
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isVoLteEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_a4} :catch_a5
    .catchall {:try_start_4e .. :try_end_a4} :catchall_eb

    .line 799
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":I
    :cond_a4
    goto :goto_c2

    .line 797
    :catch_a5
    move-exception v2

    .line 798
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    :try_start_a6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isVoLteEnabled: false due to IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catchall {:try_start_a6 .. :try_end_c2} :catchall_eb

    .line 800
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c2
    if-eqz v1, :cond_c7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 802
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_c7
    return v0

    .line 786
    .restart local v1    # "c":Landroid/database/Cursor;
    :cond_c8
    :goto_c8
    :try_start_c8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "isVoLteEnabled: not found"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_c8 .. :try_end_e4} :catchall_eb

    .line 787
    nop

    .line 800
    if-eqz v1, :cond_ea

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 787
    :cond_ea
    return v2

    .line 781
    :catchall_eb
    move-exception v2

    if-eqz v1, :cond_f6

    :try_start_ee
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_f2

    goto :goto_f6

    :catchall_f2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_f6
    :goto_f6
    throw v2
.end method

.method public isVolteEnabledFromNetwork()Z
    .registers 6

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isVolteEnabledFromNetwork"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 428
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isVolteEnabledFromNetwork: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return v3

    .line 434
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->isVolteEnabledFromNetwork(I)Z

    move-result v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return v1

    .line 435
    :catch_4b
    move-exception v1

    .line 436
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 438
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public isVolteSupportECT()Z
    .registers 6

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "isVolteSupportECT"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 450
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 451
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isVolteSupportECT: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v3

    .line 456
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->isVolteSupportEctByPhoneId(I)Z

    move-result v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return v1

    .line 457
    :catch_4b
    move-exception v1

    .line 458
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 460
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I
    .registers 7
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "registerAdhocProfile"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 583
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, -0x1

    if-nez v0, :cond_44

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registerAdhocProfile: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return v3

    .line 590
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b
    .catch Ljava/lang/ClassCastException; {:try_start_44 .. :try_end_4a} :catch_4b

    return v1

    .line 591
    :catch_4b
    move-exception v1

    .line 592
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 594
    .end local v1    # "e":Ljava/lang/Exception;
    return v3
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "registerAutoConfigurationListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    if-nez p1, :cond_3f

    .line 1893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    return-void

    .line 1896
    :cond_3f
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1897
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_69

    .line 1898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1900
    return-void

    .line 1903
    :cond_69
    :try_start_69
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;

    move-result-object v1

    .line 1904
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 1905
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_7a} :catch_7b

    .line 1909
    .end local v1    # "token":Ljava/lang/String;
    :cond_7a
    goto :goto_7f

    .line 1907
    :catch_7b
    move-exception v1

    .line 1908
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1910
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7f
    return-void
.end method

.method public declared-synchronized registerCmcRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;

    monitor-enter p0

    .line 2525
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerCmcRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    if-nez p1, :cond_45

    .line 2527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_8c

    .line 2528
    monitor-exit p0

    return-void

    .line 2530
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2531
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_74

    .line 2532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_8c

    .line 2534
    monitor-exit p0

    return-void

    .line 2537
    :cond_74
    :try_start_74
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v1

    .line 2538
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 2539
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_85} :catch_86
    .catchall {:try_start_74 .. :try_end_85} :catchall_8c

    .line 2543
    .end local v1    # "token":Ljava/lang/String;
    :cond_85
    goto :goto_8a

    .line 2541
    :catch_86
    move-exception v1

    .line 2542
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_87
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8c

    .line 2544
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_8a
    monitor-exit p0

    return-void

    .line 2524
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/IDialogEventListener;

    monitor-enter p0

    .line 1586
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerDialogEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    if-nez p1, :cond_45

    .line 1588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_8c

    .line 1589
    monitor-exit p0

    return-void

    .line 1591
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1592
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_74

    .line 1593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_8c

    .line 1595
    monitor-exit p0

    return-void

    .line 1599
    :cond_74
    :try_start_74
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;

    move-result-object v1

    .line 1600
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 1601
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_85} :catch_86
    .catchall {:try_start_74 .. :try_end_85} :catchall_8c

    .line 1605
    .end local v1    # "token":Ljava/lang/String;
    :cond_85
    goto :goto_8a

    .line 1603
    :catch_86
    move-exception v1

    .line 1604
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_87
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8c

    .line 1606
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_8a
    monitor-exit p0

    return-void

    .line 1585
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IDialogEventListener;
    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerDmValueListener(Lcom/sec/ims/ImsManager$DmConfigEventRelay;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    .line 865
    const-string v0, "]"

    const-string v1, "legacyImsManager["

    if-eqz p1, :cond_36

    .line 866
    iput-object p1, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    .line 867
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v2

    .line 868
    .local v2, "imsService":Lcom/sec/ims/IImsService;
    if-nez v2, :cond_2b

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 874
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    invoke-interface {v2, v0}, Lcom/sec/ims/IImsService;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_31

    .line 877
    goto :goto_35

    .line 875
    :catch_31
    move-exception v0

    .line 876
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 878
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "imsService":Lcom/sec/ims/IImsService;
    :goto_35
    goto :goto_52

    .line 879
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :goto_52
    return-void
.end method

.method public declared-synchronized registerEpdgListener(Lcom/sec/ims/IEpdgListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/IEpdgListener;

    monitor-enter p0

    .line 2442
    :try_start_1
    const-string v0, "legacyImsManager"

    const-string v1, "registerEpdgListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    if-nez p1, :cond_2c

    .line 2444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_58

    .line 2445
    monitor-exit p0

    return-void

    .line 2447
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_2c
    :try_start_2c
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2448
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_42

    .line 2449
    const-string v1, "legacyImsManager"

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_58

    .line 2451
    monitor-exit p0

    return-void

    .line 2455
    :cond_42
    :try_start_42
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object v1

    .line 2456
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 2457
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_51} :catch_52
    .catchall {:try_start_42 .. :try_end_51} :catchall_58

    .line 2461
    .end local v1    # "token":Ljava/lang/String;
    :cond_51
    goto :goto_56

    .line 2459
    :catch_52
    move-exception v1

    .line 2460
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_53
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_58

    .line 2462
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_56
    monitor-exit p0

    return-void

    .line 2441
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IEpdgListener;
    :catchall_58
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;

    .line 1776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "registerImSessionListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    if-nez p1, :cond_3f

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    return-void

    .line 1781
    :cond_3f
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1782
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_69

    .line 1783
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1785
    return-void

    .line 1789
    :cond_69
    :try_start_69
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;

    move-result-object v1

    .line 1790
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_78

    .line 1791
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_78} :catch_79

    .line 1795
    .end local v1    # "token":Ljava/lang/String;
    :cond_78
    goto :goto_7d

    .line 1793
    :catch_79
    move-exception v1

    .line 1794
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1796
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7d
    return-void
.end method

.method public registerImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "registerImsOngoingFtEventListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    if-eqz p1, :cond_66

    instance-of v0, p1, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-nez v0, :cond_27

    goto :goto_66

    .line 1841
    :cond_27
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1842
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_51

    .line 1843
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1845
    return-void

    .line 1848
    :cond_51
    :try_start_51
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;

    move-result-object v1

    .line 1849
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_60

    .line 1850
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_60} :catch_61

    .line 1854
    .end local v1    # "token":Ljava/lang/String;
    :cond_60
    goto :goto_65

    .line 1852
    :catch_61
    move-exception v1

    .line 1853
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1855
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_65
    return-void

    .line 1837
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    :cond_66
    :goto_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerImsOngoingFtEventListener : wrong instance or null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return-void
.end method

.method public declared-synchronized registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;

    monitor-enter p0

    .line 1135
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerImsRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    if-nez p1, :cond_45

    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_7a

    .line 1138
    monitor-exit p0

    return-void

    .line 1140
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1141
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_74

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_7a

    .line 1144
    monitor-exit p0

    return-void

    .line 1147
    :cond_74
    const/4 v1, -0x1

    :try_start_75
    invoke-virtual {p0, p1, v1}, Lcom/sec/ims/ImsManager;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7a

    .line 1148
    monitor-exit p0

    return-void

    .line 1134
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 1190
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerImsRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    if-nez p1, :cond_45

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_8a

    .line 1193
    monitor-exit p0

    return-void

    .line 1195
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1196
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_74

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_8a

    .line 1199
    monitor-exit p0

    return-void

    .line 1203
    :cond_74
    :try_start_74
    invoke-interface {v0, p1, p2}, Lcom/sec/ims/IImsService;->registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;

    move-result-object v1

    .line 1204
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 1205
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_83} :catch_84
    .catchall {:try_start_74 .. :try_end_83} :catchall_8a

    .line 1209
    .end local v1    # "token":Ljava/lang/String;
    :cond_83
    goto :goto_88

    .line 1207
    :catch_84
    move-exception v1

    .line 1208
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_85
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_8a

    .line 1211
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_88
    monitor-exit p0

    return-void

    .line 1189
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    .end local p2    # "phoneId":I
    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public registerProfile(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 827
    .local p1, "profileIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 828
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_e

    .line 829
    const-string v1, "legacyImsManager"

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    return-void

    .line 834
    :cond_e
    :try_start_e
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->registerProfileByPhoneId(Ljava/util/List;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 837
    goto :goto_18

    .line 835
    :catch_14
    move-exception v1

    .line 836
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 838
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public declared-synchronized registerRttEventListener(Lcom/sec/ims/IRttEventListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/IRttEventListener;

    monitor-enter p0

    .line 1525
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerDialogEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    if-nez p1, :cond_45

    .line 1527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_8c

    .line 1528
    monitor-exit p0

    return-void

    .line 1530
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1531
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_74

    .line 1532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_8c

    .line 1534
    monitor-exit p0

    return-void

    .line 1538
    :cond_74
    :try_start_74
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;

    move-result-object v1

    .line 1539
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 1540
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_85} :catch_86
    .catchall {:try_start_74 .. :try_end_85} :catchall_8c

    .line 1544
    .end local v1    # "token":Ljava/lang/String;
    :cond_85
    goto :goto_8a

    .line 1542
    :catch_86
    move-exception v1

    .line 1543
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_87
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8c

    .line 1545
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_8a
    monitor-exit p0

    return-void

    .line 1524
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IRttEventListener;
    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;

    monitor-enter p0

    .line 1162
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerSimMobilityStatusListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    if-nez p1, :cond_45

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_7a

    .line 1165
    monitor-exit p0

    return-void

    .line 1167
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1168
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_74

    .line 1169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_7a

    .line 1171
    monitor-exit p0

    return-void

    .line 1174
    :cond_74
    const/4 v1, -0x1

    :try_start_75
    invoke-virtual {p0, p1, v1}, Lcom/sec/ims/ImsManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7a

    .line 1175
    monitor-exit p0

    return-void

    .line 1161
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/ISimMobilityStatusListener;
    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 1226
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "registerSimMobilityStatusListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    if-nez p1, :cond_45

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_8a

    .line 1229
    monitor-exit p0

    return-void

    .line 1231
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1232
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_74

    .line 1233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_72
    .catchall {:try_start_45 .. :try_end_72} :catchall_8a

    .line 1235
    monitor-exit p0

    return-void

    .line 1239
    :cond_74
    :try_start_74
    invoke-interface {v0, p1, p2}, Lcom/sec/ims/IImsService;->registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, "token":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_83

    .line 1241
    iget-object v2, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_83
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_83} :catch_84
    .catchall {:try_start_74 .. :try_end_83} :catchall_8a

    .line 1245
    .end local v1    # "token":Ljava/lang/String;
    :cond_83
    goto :goto_88

    .line 1243
    :catch_84
    move-exception v1

    .line 1244
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_85
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_8a

    .line 1246
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_88
    monitor-exit p0

    return-void

    .line 1225
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/ISimMobilityStatusListener;
    .end local p2    # "phoneId":I
    :catchall_8a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendDeregister(I)V
    .registers 7
    .param p1, "reason"    # I

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendDeregister"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 676
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_41

    .line 677
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    return-void

    .line 682
    :cond_41
    :try_start_41
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->sendDeregister(II)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_46} :catch_47

    .line 685
    goto :goto_4b

    .line 683
    :catch_47
    move-exception v1

    .line 684
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 686
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4b
    return-void
.end method

.method public sendIidToken(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 1986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendIidToken"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1988
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_43

    .line 1989
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    return-void

    .line 1993
    :cond_43
    :try_start_43
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->sendIidToken(Ljava/lang/String;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49

    .line 1996
    goto :goto_4d

    .line 1994
    :catch_49
    move-exception v1

    .line 1995
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1997
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 1967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendMsisdnNumber"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1969
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_43

    .line 1970
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    return-void

    .line 1974
    :cond_43
    :try_start_43
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->sendMsisdnNumber(Ljava/lang/String;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49

    .line 1977
    goto :goto_4d

    .line 1975
    :catch_49
    move-exception v1

    .line 1976
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1978
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRttMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1504
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_54

    .line 1505
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRttMode: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    return-void

    .line 1510
    :cond_54
    :try_start_54
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->sendRttMessage(Ljava/lang/String;)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_58

    .line 1513
    goto :goto_5c

    .line 1511
    :catch_58
    move-exception v1

    .line 1512
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1514
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5c
    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .registers 7
    .param p1, "callId"    # I
    .param p2, "mode"    # Z

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendRttSessionModifyRequest: "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1436
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_43

    .line 1437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendRttSessionModifyRequest: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    return-void

    .line 1442
    :cond_43
    :try_start_43
    invoke-interface {v0, p1, p2}, Lcom/sec/ims/IImsService;->sendRttSessionModifyRequest(IZ)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_47

    .line 1445
    goto :goto_4b

    .line 1443
    :catch_47
    move-exception v1

    .line 1444
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1446
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4b
    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .registers 8
    .param p1, "callId"    # I
    .param p2, "accept"    # Z

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRttSessionModifyResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1413
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_54

    .line 1414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendRttSessionModifyResponse: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    return-void

    .line 1419
    :cond_54
    :try_start_54
    invoke-interface {v0, p1, p2}, Lcom/sec/ims/IImsService;->sendRttSessionModifyResponse(IZ)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_57} :catch_58

    .line 1422
    goto :goto_5c

    .line 1420
    :catch_58
    move-exception v1

    .line 1421
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1423
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5c
    return-void
.end method

.method public sendTryRegister()V
    .registers 5

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendTryRegister"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 623
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_43

    .line 624
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sendTryRegister: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 629
    :cond_43
    :try_start_43
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->sendTryRegisterByPhoneId(I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49

    .line 632
    goto :goto_4d

    .line 630
    :catch_49
    move-exception v1

    .line 631
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 633
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-void
.end method

.method public sendUpdateRegister()V
    .registers 8

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendInitialRegister"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 642
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_41

    .line 643
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    return-void

    .line 648
    :cond_41
    :try_start_41
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 649
    .local v1, "regs":[Lcom/sec/ims/ImsRegistration;
    if-eqz v1, :cond_75

    array-length v2, v1

    if-nez v2, :cond_4d

    goto :goto_75

    .line 653
    :cond_4d
    array-length v2, v1

    const/4 v3, 0x0

    :goto_4f
    if-ge v3, v2, :cond_74

    aget-object v4, v1, v3

    .line 654
    .local v4, "reg":Lcom/sec/ims/ImsRegistration;
    const-string v5, "mmtel"

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 655
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_71

    .line 656
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v2, v3}, Lcom/sec/ims/IImsService;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_70} :catch_76

    .line 657
    return-void

    .line 653
    .end local v4    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    .line 662
    .end local v1    # "regs":[Lcom/sec/ims/ImsRegistration;
    :cond_74
    goto :goto_7a

    .line 650
    .restart local v1    # "regs":[Lcom/sec/ims/ImsRegistration;
    :cond_75
    :goto_75
    return-void

    .line 660
    .end local v1    # "regs":[Lcom/sec/ims/ImsRegistration;
    :catch_76
    move-exception v1

    .line 661
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 663
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7a
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .line 1948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "sendVerificationCode"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1950
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_43

    .line 1951
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    return-void

    .line 1955
    :cond_43
    :try_start_43
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->sendVerificationCode(Ljava/lang/String;I)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_48} :catch_49

    .line 1958
    goto :goto_4d

    .line 1956
    :catch_49
    move-exception v1

    .line 1957
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1959
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_4d
    return-void
.end method

.method public setActiveMsisdn(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setActiveMsisdn: msisdn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 761
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, -0x1

    if-nez v0, :cond_63

    .line 762
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setActiveMsisdn: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return v3

    .line 767
    :cond_63
    :try_start_63
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/sec/ims/IImsService;->setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_69
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_69} :catch_6a

    return v1

    .line 768
    :catch_6a
    move-exception v1

    .line 769
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 772
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public setAutomaticMode(Z)V
    .registers 7
    .param p1, "mode"    # Z

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAutomaticMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1390
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_54

    .line 1391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setAutomaticMode: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    return-void

    .line 1396
    :cond_54
    :try_start_54
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->setAutomaticMode(IZ)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_5a

    .line 1399
    goto :goto_5e

    .line 1397
    :catch_5a
    move-exception v1

    .line 1398
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1400
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5e
    return-void
.end method

.method public setCrossSimPermanentBlocked(Z)V
    .registers 5
    .param p1, "blocked"    # Z

    .line 2655
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2656
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_e

    .line 2657
    const-string v1, "legacyImsManager"

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    return-void

    .line 2661
    :cond_e
    :try_start_e
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->setCrossSimPermanentBlocked(IZ)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 2664
    goto :goto_18

    .line 2662
    :catch_14
    move-exception v1

    .line 2663
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2665
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "intfName"    # Ljava/lang/String;
    .param p2, "pcscfs"    # [Ljava/lang/String;
    .param p3, "gwAddress"    # Ljava/lang/String;

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEmergencyPdnInfo: intfName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 739
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_54

    .line 740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setEmergencyPdnInfo: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 745
    :cond_54
    :try_start_54
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/ims/IImsService;->setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_5a

    .line 748
    goto :goto_5e

    .line 746
    :catch_5a
    move-exception v1

    .line 747
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 749
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5e
    return-void
.end method

.method public setNrInterworkingMode(I)V
    .registers 5
    .param p1, "mode"    # I

    .line 2738
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2739
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_e

    .line 2740
    const-string v1, "legacyImsManager"

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    return-void

    .line 2744
    :cond_e
    :try_start_e
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->setNrInterworkingMode(II)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14

    .line 2747
    goto :goto_18

    .line 2745
    :catch_14
    move-exception v1

    .line 2746
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2748
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method public setRttMode(I)V
    .registers 7
    .param p1, "mode"    # I

    .line 1457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRttMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1459
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_54

    .line 1460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setRttMode: not connected."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    return-void

    .line 1465
    :cond_54
    :try_start_54
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1, p1}, Lcom/sec/ims/IImsService;->setRttMode(II)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_59} :catch_5a

    .line 1468
    goto :goto_5e

    .line 1466
    :catch_5a
    move-exception v1

    .line 1467
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1469
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5e
    return-void
.end method

.method public setVideocallType(I)Z
    .registers 7
    .param p1, "videocallType"    # I

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVideocallType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2164
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_55

    .line 2165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    return v3

    .line 2170
    :cond_55
    :try_start_55
    invoke-interface {v0, p1}, Lcom/sec/ims/IImsService;->setVideocallType(I)Z

    move-result v1
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_59} :catch_5a

    return v1

    .line 2171
    :catch_5a
    move-exception v1

    .line 2172
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2174
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public startDmConfig()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "startDmConfig"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2360
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 2361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    return v3

    .line 2366
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->startDmConfig(I)I

    move-result v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return v1

    .line 2367
    :catch_4b
    move-exception v1

    .line 2368
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2370
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public startLocalRingBackTone(III)I
    .registers 10
    .param p1, "streamType"    # I
    .param p2, "volume"    # I
    .param p3, "toneType"    # I

    .line 2038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startLocalRingBackTone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2040
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, -0x1

    if-nez v0, :cond_67

    .line 2041
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    return v3

    .line 2046
    :cond_67
    :try_start_67
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/ims/IImsService;->startLocalRingBackTone(III)I

    move-result v1
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6b} :catch_6c

    return v1

    .line 2047
    :catch_6c
    move-exception v4

    .line 2048
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startLocalRingBackTone has Error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    .end local v4    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public stopLocalRingBackTone()I
    .registers 7

    .line 2061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "stopLocalRingBackTone:"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2063
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, -0x1

    if-nez v0, :cond_44

    .line 2064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    return v3

    .line 2069
    :cond_44
    :try_start_44
    invoke-interface {v0}, Lcom/sec/ims/IImsService;->stopLocalRingBackTone()I

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_48} :catch_49

    return v1

    .line 2070
    :catch_49
    move-exception v4

    .line 2071
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopLocalRingBackTone has Error "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    .end local v4    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public suspendRegister(Z)V
    .registers 5
    .param p1, "suspend"    # Z

    .line 695
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 696
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_27

    .line 697
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SuspendRegi Error. ImsService null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 702
    :cond_27
    :try_start_27
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->suspendRegister(ZI)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d

    .line 705
    goto :goto_31

    .line 703
    :catch_2d
    move-exception v1

    .line 704
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 706
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_31
    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "dialogId"    # Ljava/lang/String;

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "transferCall msisdn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dialogId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1649
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_62

    .line 1650
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    return-void

    .line 1655
    :cond_62
    :try_start_62
    invoke-interface {v0, p1, p2}, Lcom/sec/ims/IImsService;->transferCall(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_62 .. :try_end_65} :catch_66

    .line 1658
    goto :goto_6a

    .line 1656
    :catch_66
    move-exception v1

    .line 1657
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1659
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_6a
    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .registers 5
    .param p1, "phoneId"    # I

    .line 2426
    const-string v0, "legacyImsManager"

    const-string v1, "triggerAutoConfigurationForApp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    .line 2429
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-nez v1, :cond_13

    .line 2430
    const-string v2, "Not initialized."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    return-void

    .line 2435
    :cond_13
    :try_start_13
    invoke-interface {v1, p1}, Lcom/sec/ims/IImsService;->triggerAutoConfigurationForApp(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_17

    .line 2438
    goto :goto_1b

    .line 2436
    :catch_17
    move-exception v0

    .line 2437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2439
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1b
    return-void
.end method

.method public declared-synchronized unRegisterEpdgListener(Lcom/sec/ims/IEpdgListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/IEpdgListener;

    monitor-enter p0

    .line 2465
    :try_start_1
    const-string v0, "legacyImsManager"

    const-string v1, "unRegisterEpdgListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    if-nez p1, :cond_2c

    .line 2467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_50

    .line 2468
    monitor-exit p0

    return-void

    .line 2470
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mEpdgListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2471
    .local v0, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_50

    .line 2472
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v1, :cond_47

    if-nez v0, :cond_3d

    goto :goto_47

    .line 2478
    :cond_3d
    :try_start_3d
    invoke-interface {v1, v0}, Lcom/sec/ims/IImsService;->unRegisterEpdgListener(Ljava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_40} :catch_41
    .catchall {:try_start_3d .. :try_end_40} :catchall_50

    .line 2481
    goto :goto_45

    .line 2479
    :catch_41
    move-exception v2

    .line 2480
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_42
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_50

    .line 2482
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_45
    monitor-exit p0

    return-void

    .line 2473
    :cond_47
    :goto_47
    :try_start_47
    const-string v2, "legacyImsManager"

    const-string v3, "Not initialized or token null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    .line 2474
    monitor-exit p0

    return-void

    .line 2464
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IEpdgListener;
    :catchall_50
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "unregisterAutoConfigurationListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const-string v0, "listener is null."

    if-nez p1, :cond_3f

    .line 1921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    return-void

    .line 1924
    :cond_3f
    iget-object v3, p0, Lcom/sec/ims/ImsManager;->mAutoConfigurationListener:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1926
    .local v3, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v4

    .line 1927
    .local v4, "imsService":Lcom/sec/ims/IImsService;
    if-nez v4, :cond_6a

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not initialized or token null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    return-void

    .line 1931
    :cond_6a
    if-nez v3, :cond_87

    .line 1932
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    return-void

    .line 1936
    :cond_87
    :try_start_87
    iget v0, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v4, v3, v0}, Lcom/sec/ims/IImsService;->unregisterAutoConfigurationListener(Ljava/lang/String;I)V
    :try_end_8c
    .catch Landroid/os/RemoteException; {:try_start_87 .. :try_end_8c} :catch_8d

    .line 1939
    goto :goto_91

    .line 1937
    :catch_8d
    move-exception v0

    .line 1938
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1940
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_91
    return-void
.end method

.method public declared-synchronized unregisterCmcRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;

    monitor-enter p0

    .line 2553
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterCmcRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    if-nez p1, :cond_45

    .line 2555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_84

    .line 2556
    monitor-exit p0

    return-void

    .line 2558
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mCmcRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2560
    .local v0, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_84

    .line 2561
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v1, :cond_62

    if-nez v0, :cond_56

    goto :goto_62

    .line 2566
    :cond_56
    :try_start_56
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v0, v2}, Lcom/sec/ims/IImsService;->unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catchall {:try_start_56 .. :try_end_5b} :catchall_84

    .line 2569
    goto :goto_60

    .line 2567
    :catch_5c
    move-exception v2

    .line 2568
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5d
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_84

    .line 2570
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_60
    monitor-exit p0

    return-void

    .line 2562
    :cond_62
    :goto_62
    :try_start_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized or token null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_62 .. :try_end_82} :catchall_84

    .line 2563
    monitor-exit p0

    return-void

    .line 2552
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/IDialogEventListener;

    monitor-enter p0

    .line 1616
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterDialogEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    if-nez p1, :cond_45

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_84

    .line 1619
    monitor-exit p0

    return-void

    .line 1621
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mDialogListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1623
    .local v0, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_84

    .line 1624
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v1, :cond_62

    if-nez v0, :cond_56

    goto :goto_62

    .line 1630
    :cond_56
    :try_start_56
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lcom/sec/ims/IImsService;->unregisterDialogEventListenerByToken(ILjava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catchall {:try_start_56 .. :try_end_5b} :catchall_84

    .line 1633
    goto :goto_60

    .line 1631
    :catch_5c
    move-exception v2

    .line 1632
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5d
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_84

    .line 1634
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_60
    monitor-exit p0

    return-void

    .line 1625
    :cond_62
    :goto_62
    :try_start_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized or token null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_62 .. :try_end_82} :catchall_84

    .line 1626
    monitor-exit p0

    return-void

    .line 1615
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IDialogEventListener;
    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterDmValueListener(Lcom/sec/ims/ImsManager$DmConfigEventRelay;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    .line 890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/ImsManager;->mEventRelay:Lcom/sec/ims/ImsManager$DmConfigEventRelay;

    .line 891
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 892
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_2a

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void

    .line 898
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mEventProxy:Lcom/sec/ims/IImsDmConfigListener$Stub;

    invoke-interface {v0, v1}, Lcom/sec/ims/IImsService;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_30

    .line 901
    goto :goto_34

    .line 899
    :catch_30
    move-exception v1

    .line 900
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 902
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/sec/ims/im/IImSessionListener;

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "unregisterImSessionListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    if-nez p1, :cond_3f

    .line 1808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    return-void

    .line 1811
    :cond_3f
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mImSessionListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1813
    .local v0, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v3

    .line 1814
    .local v3, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v3, :cond_59

    if-nez v0, :cond_50

    goto :goto_59

    .line 1820
    :cond_50
    :try_start_50
    invoke-interface {v3, v0}, Lcom/sec/ims/IImsService;->unregisterImSessionListener(Ljava/lang/String;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_54

    .line 1823
    goto :goto_58

    .line 1821
    :catch_54
    move-exception v1

    .line 1822
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1824
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_58
    return-void

    .line 1815
    :cond_59
    :goto_59
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized or token null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    return-void
.end method

.method public unregisterImsOngoingFtEventListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    .line 1865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "unregisterImsOngoingFtEventListener"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    if-nez p1, :cond_3f

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    return-void

    .line 1870
    :cond_3f
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mOngoingFtEventListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1872
    .local v0, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1

    .line 1873
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v1, :cond_59

    if-nez v0, :cond_50

    goto :goto_59

    .line 1878
    :cond_50
    :try_start_50
    invoke-interface {v1, v0}, Lcom/sec/ims/IImsService;->unregisterImsOngoingFtListener(Ljava/lang/String;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_53} :catch_54

    .line 1881
    goto :goto_58

    .line 1879
    :catch_54
    move-exception v2

    .line 1880
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1882
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_58
    return-void

    .line 1874
    :cond_59
    :goto_59
    const-string v2, "legacyImsManager"

    const-string v3, "Not initialized or token null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    return-void
.end method

.method public declared-synchronized unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;

    monitor-enter p0

    .line 1257
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterImsRegistrationListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    if-nez p1, :cond_45

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_78

    .line 1260
    monitor-exit p0

    return-void

    .line 1262
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1263
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_72

    .line 1264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_45 .. :try_end_70} :catchall_78

    .line 1266
    monitor-exit p0

    return-void

    .line 1269
    :cond_72
    const/4 v1, -0x1

    :try_start_73
    invoke-virtual {p0, p1, v1}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_78

    .line 1270
    monitor-exit p0

    return-void

    .line 1256
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    :catchall_78
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 1309
    if-nez p1, :cond_23

    .line 1310
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_5e

    .line 1311
    monitor-exit p0

    return-void

    .line 1313
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRegListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1315
    .local v0, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_5e

    .line 1316
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v1, :cond_3e

    if-nez v0, :cond_34

    goto :goto_3e

    .line 1322
    :cond_34
    :try_start_34
    invoke-interface {v1, v0, p2}, Lcom/sec/ims/IImsService;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_5e

    .line 1325
    goto :goto_3c

    .line 1323
    :catch_38
    move-exception v2

    .line 1324
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_39
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5e

    .line 1326
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3c
    monitor-exit p0

    return-void

    .line 1317
    :cond_3e
    :goto_3e
    :try_start_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized or token null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_5e

    .line 1318
    monitor-exit p0

    return-void

    .line 1308
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IImsRegistrationListener;
    .end local p2    # "phoneId":I
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterRttEventListener(Lcom/sec/ims/IRttEventListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/IRttEventListener;

    monitor-enter p0

    .line 1556
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterDialogEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    if-nez p1, :cond_45

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_84

    .line 1559
    monitor-exit p0

    return-void

    .line 1561
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mRttListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1563
    .local v0, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_51
    .catchall {:try_start_45 .. :try_end_51} :catchall_84

    .line 1564
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v1, :cond_62

    if-nez v0, :cond_56

    goto :goto_62

    .line 1570
    :cond_56
    :try_start_56
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v1, v2, v0}, Lcom/sec/ims/IImsService;->unregisterRttEventListener(ILjava/lang/String;)V
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_5c
    .catchall {:try_start_56 .. :try_end_5b} :catchall_84

    .line 1573
    goto :goto_60

    .line 1571
    :catch_5c
    move-exception v2

    .line 1572
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5d
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_84

    .line 1574
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_60
    monitor-exit p0

    return-void

    .line 1565
    :cond_62
    :goto_62
    :try_start_62
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized or token null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catchall {:try_start_62 .. :try_end_82} :catchall_84

    .line 1566
    monitor-exit p0

    return-void

    .line 1555
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/IRttEventListener;
    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;

    monitor-enter p0

    .line 1284
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unregisterSimMobilityStatusListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    if-nez p1, :cond_45

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_78

    .line 1287
    monitor-exit p0

    return-void

    .line 1289
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_45
    :try_start_45
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 1290
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    if-nez v0, :cond_72

    .line 1291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "legacyImsManager["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v1, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_70
    .catchall {:try_start_45 .. :try_end_70} :catchall_78

    .line 1293
    monitor-exit p0

    return-void

    .line 1296
    :cond_72
    const/4 v1, -0x1

    :try_start_73
    invoke-virtual {p0, p1, v1}, Lcom/sec/ims/ImsManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_78

    .line 1297
    monitor-exit p0

    return-void

    .line 1283
    .end local v0    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/ISimMobilityStatusListener;
    :catchall_78
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .registers 7
    .param p1, "listener"    # Lcom/sec/ims/ISimMobilityStatusListener;
    .param p2, "phoneId"    # I

    monitor-enter p0

    .line 1339
    if-nez p1, :cond_23

    .line 1340
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_5e

    .line 1341
    monitor-exit p0

    return-void

    .line 1343
    .end local p0    # "this":Lcom/sec/ims/ImsManager;
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/sec/ims/ImsManager;->mSimMobilityStatusListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1344
    .local v0, "token":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v1
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_5e

    .line 1345
    .local v1, "imsService":Lcom/sec/ims/IImsService;
    if-eqz v1, :cond_3e

    if-nez v0, :cond_34

    goto :goto_3e

    .line 1351
    :cond_34
    :try_start_34
    invoke-interface {v1, v0, p2}, Lcom/sec/ims/IImsService;->unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_5e

    .line 1354
    goto :goto_3c

    .line 1352
    :catch_38
    move-exception v2

    .line 1353
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_39
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5e

    .line 1355
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3c
    monitor-exit p0

    return-void

    .line 1346
    :cond_3e
    :goto_3e
    :try_start_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legacyImsManager["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Not initialized or token null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_5e

    .line 1347
    monitor-exit p0

    return-void

    .line 1338
    .end local v0    # "token":Ljava/lang/String;
    .end local v1    # "imsService":Lcom/sec/ims/IImsService;
    .end local p1    # "listener":Lcom/sec/ims/ISimMobilityStatusListener;
    .end local p2    # "phoneId":I
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateConfigValues(Landroid/content/ContentValues;)Z
    .registers 7
    .param p1, "updatedValues"    # Landroid/content/ContentValues;

    .line 2248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "updateConfigValues"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2250
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 2251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    return v3

    .line 2256
    :cond_44
    const/4 v1, -0x1

    :try_start_45
    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/ims/IImsService;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result v1
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4c

    return v1

    .line 2257
    :catch_4c
    move-exception v1

    .line 2258
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2260
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public updateConfigValues(Landroid/content/ContentValues;I)Z
    .registers 8
    .param p1, "updatedValues"    # Landroid/content/ContentValues;
    .param p2, "transactionId"    # I

    .line 2273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "updateConfigValues"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 2275
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, 0x0

    if-nez v0, :cond_44

    .line 2276
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    return v3

    .line 2281
    :cond_44
    :try_start_44
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/IImsService;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result v1
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4a} :catch_4b

    return v1

    .line 2282
    :catch_4b
    move-exception v1

    .line 2283
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2285
    .end local v1    # "e":Landroid/os/RemoteException;
    return v3
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;)I
    .registers 7
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "legacyImsManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRegistration: profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-direct {p0}, Lcom/sec/ims/ImsManager;->getImsService()Lcom/sec/ims/IImsService;

    move-result-object v0

    .line 716
    .local v0, "imsService":Lcom/sec/ims/IImsService;
    const/4 v3, -0x1

    if-nez v0, :cond_59

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "updateRegistration: Not initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return v3

    .line 722
    :cond_59
    :try_start_59
    iget v1, p0, Lcom/sec/ims/ImsManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/IImsService;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_5f} :catch_60
    .catch Ljava/lang/ClassCastException; {:try_start_59 .. :try_end_5f} :catch_60

    return v1

    .line 723
    :catch_60
    move-exception v1

    .line 724
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    .end local v1    # "e":Ljava/lang/Exception;
    return v3
.end method
