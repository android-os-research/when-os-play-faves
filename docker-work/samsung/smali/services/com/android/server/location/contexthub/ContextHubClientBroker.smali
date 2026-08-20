.class public Lcom/android/server/location/contexthub/ContextHubClientBroker;
.super Landroid/hardware/location/IContextHubClient$Stub;
.source "ContextHubClientBroker.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;,
        Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;
    }
.end annotation


# static fields
.field public static final AUTHORIZATION_UNKNOWN:I = -0x1

.field public static final CHANGE_ID_AUTH_STATE_DENIED:J = 0xacf3007L

.field public static final RECEIVE_MSG_NOTE:Ljava/lang/String; = "NanoappMessageDelivery "

.field public static final TAG:Ljava/lang/String; = "ContextHubClientBroker"


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

.field public mAttributionTag:Ljava/lang/String;

.field public mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

.field public final mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

.field public final mContext:Landroid/content/Context;

.field public final mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

.field public final mForceDeniedNapps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mHostEndPointId:S

.field public mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mMessageChannelNanoappIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mNappToAuthTimerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/server/location/contexthub/AuthStateDenialTimer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackage:Ljava/lang/String;

.field public final mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

.field public final mPid:I

.field public final mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

.field public mRegistered:Z

.field public final mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

.field public final mUid:I


# direct methods
.method public static synthetic $r8$lambda$9aGPRNxyTb26EE4WE2c97GbHAs8(JLandroid/hardware/location/IContextHubClientCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppUnloaded$4(JLandroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FNcI6dKEOYt3Xb9PdRUAFHJumJ4(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubClientCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$sendMessageToClient$0(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FPBJFUV94inHCeD6arCFE59kGZI(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Landroid/content/Intent;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onHubReset$7()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$MnC-8Dp9firsG1GJ9V8qMAkKp4E(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)Landroid/content/Intent;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppAborted$9(JI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ORD-iS51IWJ20yy2nFBzLgZv8_k(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)Landroid/content/Intent;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$sendAuthStateCallback$11(JI)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VcAOcutitu0YlkfYSca6nHdORF4(JILandroid/hardware/location/IContextHubClientCallback;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$sendAuthStateCallback$10(JILandroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZWYK3ns76mWEIF5ej6wDXTLKBt4(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$sendMessageToClient$1(JLandroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$boz-lRdDa6bjqKz7uTu-5VyXEcw(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)Landroid/content/Intent;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppUnloaded$5(J)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$j7w8az-wCHvGeP2PWwF_8zoI1Ao(JLandroid/hardware/location/IContextHubClientCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppLoaded$2(JLandroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kU4n_bH_eoKIdcferyJMeBvMmxo(Landroid/hardware/location/IContextHubClientCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onHubReset$6(Landroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lj-x1tMk7iXZQx3-zzHWCDyta4c(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)Landroid/content/Intent;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppLoaded$3(J)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o2WzEGD04V2z6AVLpPkfgWhsGAk(JILandroid/hardware/location/IContextHubClientCallback;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onNanoAppAborted$8(JILandroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmIsPermQueryIssued(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessageChannelNanoappIdMap(Lcom/android/server/location/contexthub/ContextHubClientBroker;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateNanoAppAuthState(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLjava/util/List;Z)I
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/app/PendingIntent;JLjava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;)V
    .registers 24

    .line 354
    invoke-virtual/range {p6 .. p6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v12

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    .line 352
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V
    .registers 15

    .line 313
    invoke-direct {p0}, Landroid/hardware/location/IContextHubClient$Stub;-><init>()V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    .line 210
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 216
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 223
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    .line 235
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    .line 241
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$1;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    .line 314
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    .line 315
    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    .line 316
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    .line 317
    iput-object p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 318
    iput-short p5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    .line 319
    iput-object p6, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    if-nez p9, :cond_4a

    .line 321
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {p2, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    goto :goto_51

    .line 323
    :cond_4a
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-direct {p2, p0, p9, p10, p11}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;Landroid/app/PendingIntent;J)V

    iput-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 325
    :goto_51
    iput-object p12, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 326
    iput-object p7, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    .line 327
    iput-object p8, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    .line 329
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPid:I

    .line 330
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    .line 331
    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 333
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->startMonitoringOpChanges()V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendHostEndpointConnectedEvent()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Ljava/lang/String;)V
    .registers 23

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p9

    .line 342
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/contexthub/ContextHubClientBroker;-><init>(Landroid/content/Context;Lcom/android/server/location/contexthub/IContextHubWrapper;Lcom/android/server/location/contexthub/ContextHubClientManager;Landroid/hardware/location/ContextHubInfo;SLandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Lcom/android/server/location/contexthub/ContextHubTransactionManager;Landroid/app/PendingIntent;JLjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onHubReset$6(Landroid/hardware/location/IContextHubClientCallback;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-interface {p0}, Landroid/hardware/location/IContextHubClientCallback;->onHubReset()V

    return-void
.end method

.method private synthetic lambda$onHubReset$7()Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x6

    .line 550
    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onNanoAppAborted$8(JILandroid/hardware/location/IContextHubClientCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppAborted(JI)V

    return-void
.end method

.method private synthetic lambda$onNanoAppAborted$9(JI)Landroid/content/Intent;
    .registers 5

    const/4 v0, 0x4

    .line 566
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.hardware.location.extra.NANOAPP_ABORT_CODE"

    .line 567
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onNanoAppLoaded$2(JLandroid/hardware/location/IContextHubClientCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-interface {p2, p0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppLoaded(J)V

    return-void
.end method

.method private synthetic lambda$onNanoAppLoaded$3(J)Landroid/content/Intent;
    .registers 4

    const/4 v0, 0x0

    .line 531
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onNanoAppUnloaded$4(JLandroid/hardware/location/IContextHubClientCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    invoke-interface {p2, p0, p1}, Landroid/hardware/location/IContextHubClientCallback;->onNanoAppUnloaded(J)V

    return-void
.end method

.method private synthetic lambda$onNanoAppUnloaded$5(J)Landroid/content/Intent;
    .registers 4

    const/4 v0, 0x1

    .line 542
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$sendAuthStateCallback$10(JILandroid/hardware/location/IContextHubClientCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 760
    invoke-interface {p3, p0, p1, p2}, Landroid/hardware/location/IContextHubClientCallback;->onClientAuthorizationChanged(JI)V

    return-void
.end method

.method private synthetic lambda$sendAuthStateCallback$11(JI)Landroid/content/Intent;
    .registers 5

    const/4 v0, 0x7

    .line 763
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

    .line 764
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$sendMessageToClient$0(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubClientCallback;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    invoke-interface {p1, p0}, Landroid/hardware/location/IContextHubClientCallback;->onMessageFromNanoApp(Landroid/hardware/location/NanoAppMessage;)V

    return-void
.end method

.method private synthetic lambda$sendMessageToClient$1(JLandroid/hardware/location/NanoAppMessage;)Landroid/content/Intent;
    .registers 5

    const/4 v0, 0x5

    .line 514
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(IJ)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.hardware.location.extra.MESSAGE"

    .line 515
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public attachDeathRecipient()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    if-eqz v0, :cond_c

    .line 594
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_c
    return-void
.end method

.method public final authStateToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_11

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_b
    const-string p0, "GRANTED"

    return-object p0

    :cond_e
    const-string p0, "DENIED_GRACE_PERIOD"

    return-object p0

    :cond_11
    const-string p0, "DENIED"

    return-object p0
.end method

.method public binderDied()V
    .registers 1

    .line 432
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onClientExit()V

    return-void
.end method

.method public final checkNanoappPermsAsync()V
    .registers 5

    .line 670
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPermQueryIssued:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 671
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 672
    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mQueryPermsCallback:Landroid/hardware/location/IContextHubTransactionCallback;

    iget-object v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    .line 671
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->createQueryTransaction(ILandroid/hardware/location/IContextHubTransactionCallback;Ljava/lang/String;)Lcom/android/server/location/contexthub/ContextHubServiceTransaction;

    move-result-object v0

    .line 673
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mTransactionManager:Lcom/android/server/location/contexthub/ContextHubTransactionManager;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubTransactionManager;->addTransaction(Lcom/android/server/location/contexthub/ContextHubServiceTransaction;)V

    :cond_1e
    return-void
.end method

.method public close()V
    .registers 2

    .line 416
    monitor-enter p0

    .line 417
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->clear()V

    .line 418
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    .line 419
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->onClientExit()V

    return-void

    :catchall_b
    move-exception v0

    .line 418
    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public final createIntent(I)Landroid/content/Intent;
    .registers 4

    .line 791
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.hardware.location.extra.EVENT_TYPE"

    .line 792
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 793
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    const-string p1, "android.hardware.location.extra.CONTEXT_HUB_INFO"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method public final createIntent(IJ)Landroid/content/Intent;
    .registers 4

    .line 806
    invoke-virtual {p0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->createIntent(I)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android.hardware.location.extra.NANOAPP_ID"

    .line 807
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    return-object p0
.end method

.method public final doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .registers 11

    :try_start_0
    const-string v6, "android.permission.ACCESS_CONTEXT_HUB"

    .line 844
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_34

    .line 848
    :catch_e
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 850
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PendingIntent has been canceled, unregistering from client (host endpoint ID "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ContextHubClientBroker"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->close()V

    :goto_34
    return-void
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;)V
    .registers 6

    .line 913
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v0

    const-wide v1, 0x10500000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 914
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v0

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 915
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    const-wide v1, 0x10900000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_41

    const-wide v0, 0x10800000005L

    const/4 v2, 0x1

    .line 917
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10300000004L

    .line 918
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_41
    const-wide v0, 0x10800000006L

    .line 920
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000007L

    .line 921
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->isPendingIntentCancelled()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000008L

    .line 922
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public getAttachedContextHubId()I
    .registers 1

    .line 467
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getAttributionTag()Ljava/lang/String;
    .registers 1

    .line 460
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getHostEndPointId()S
    .registers 1

    .line 474
    iget-short p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    return p0
.end method

.method public getId()I
    .registers 1

    .line 424
    iget-short p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 445
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public handleAuthStateTimerExpiry(J)V
    .registers 6

    .line 654
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 656
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1b

    if-eqz v1, :cond_1a

    .line 660
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    .line 659
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    :cond_1a
    return-void

    :catchall_1b
    move-exception p0

    .line 656
    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public hasPendingIntent(Landroid/app/PendingIntent;J)Z
    .registers 7

    .line 579
    monitor-enter p0

    .line 580
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 581
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v1

    .line 582
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1e

    if-eqz v0, :cond_1c

    .line 583
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    cmp-long p0, v1, p2

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0

    :catchall_1e
    move-exception p1

    .line 582
    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public hasPermissions(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 605
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 606
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPid:I

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_1e
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V
    .registers 5

    monitor-enter p0

    .line 774
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    if-eqz v0, :cond_27

    .line 776
    :try_start_5
    invoke-interface {p1, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;->accept(Landroid/hardware/location/IContextHubClientCallback;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_29

    goto :goto_27

    :catch_9
    move-exception p1

    :try_start_a
    const-string v0, "ContextHubClientBroker"

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while invoking client callback (host endpoint ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_29

    .line 782
    :cond_27
    :goto_27
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isPendingIntentCancelled()Z
    .registers 1

    .line 645
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mIsPendingIntentCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized isRegistered()Z
    .registers 2

    monitor-enter p0

    .line 860
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notePermissions(Ljava/util/List;Ljava/lang/String;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 622
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 623
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    const/4 v7, 0x0

    .line 626
    :try_start_18
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    move v2, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_26
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_26} :catch_29

    if-eqz v0, :cond_4

    return v7

    :catch_29
    move-exception p1

    .line 631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecurityException: noteOp for pkg "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " opcode "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextHubClientBroker"

    .line 631
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_57
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized onClientExit()V
    .registers 4

    monitor-enter p0

    .line 867
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 868
    invoke-interface {v0}, Landroid/hardware/location/IContextHubClientCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 869
    iput-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mCallbackInterface:Landroid/hardware/location/IContextHubClientCallback;

    .line 871
    :cond_10
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-nez v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    if-eqz v0, :cond_25

    .line 872
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mClientManager:Lcom/android/server/location/contexthub/ContextHubClientManager;

    iget-short v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v2}, Lcom/android/server/location/contexthub/ContextHubClientManager;->unregisterClient(S)V

    .line 873
    iput-boolean v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mRegistered:Z

    .line 875
    :cond_25
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, p0}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 877
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    invoke-virtual {v0, v1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onHostEndpointDisconnected(S)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    .line 878
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onHubReset()V
    .registers 2

    .line 549
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 550
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;)V

    .line 553
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendHostEndpointConnectedEvent()V

    return-void
.end method

.method public onNanoAppAborted(JI)V
    .registers 5

    .line 563
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda10;-><init>(JI)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 565
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    .line 568
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    return-void
.end method

.method public onNanoAppLoaded(J)V
    .registers 4

    .line 527
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    .line 529
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda6;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 530
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    return-void
.end method

.method public onNanoAppUnloaded(J)V
    .registers 4

    .line 540
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda4;-><init>(J)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 541
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;J)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    return-void
.end method

.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 437
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 438
    iget-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 439
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    :cond_13
    return-void
.end method

.method public final sendAuthStateCallback(JI)V
    .registers 5

    .line 760
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda2;-><init>(JI)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 762
    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JI)V

    .line 765
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    return-void
.end method

.method public final sendHostEndpointConnectedEvent()V
    .registers 4

    .line 894
    new-instance v0, Landroid/hardware/contexthub/HostEndpointInfo;

    invoke-direct {v0}, Landroid/hardware/contexthub/HostEndpointInfo;-><init>()V

    .line 895
    iget-short v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    int-to-char v1, v1

    iput-char v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->hostEndpointId:C

    .line 896
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->packageName:Ljava/lang/String;

    .line 897
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->attributionTag:Ljava/lang/String;

    .line 898
    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mUid:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x2

    .line 900
    :goto_1b
    iput v1, v0, Landroid/hardware/contexthub/HostEndpointInfo;->type:I

    .line 901
    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/IContextHubWrapper;->onHostEndpointConnected(Landroid/hardware/contexthub/HostEndpointInfo;)V

    return-void
.end method

.method public sendMessageToClient(Landroid/hardware/location/NanoAppMessage;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/NanoAppMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 489
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 491
    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;Z)I

    move-result p2

    const-string v2, ". "

    const-string v3, "Dropping message from "

    const-string v4, "ContextHubClientBroker"

    const/4 v5, 0x1

    if-ne p2, v5, :cond_3c

    .line 496
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in grace period and napp msg has permissions"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3c
    if-eqz p2, :cond_67

    .line 504
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NanoappMessageDelivery "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 505
    invoke-virtual {p0, p3, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->notePermissions(Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_56

    goto :goto_67

    .line 511
    :cond_56
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/location/NanoAppMessage;)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->invokeCallback(Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;)V

    .line 513
    new-instance p2, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/hardware/location/NanoAppMessage;)V

    .line 516
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendPendingIntent(Ljava/util/function/Supplier;J)V

    return-void

    .line 506
    :cond_67
    :goto_67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t have permission"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .registers 8

    .line 372
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/location/contexthub/ContextHubServiceUtil;->checkPermissions(Landroid/content/Context;)V

    .line 375
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->isRegistered()Z

    move-result v0

    const-string v1, "ContextHubClientBroker"

    const/4 v2, 0x1

    if-eqz v0, :cond_84

    .line 376
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 377
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 376
    invoke-interface {v0, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4e

    const-wide/32 v0, 0xacf3007

    .line 379
    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result p0

    if-nez p0, :cond_33

    return v2

    .line 380
    :cond_33
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client doesn\'t have valid permissions to send message to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getNanoAppId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    if-ne v0, v4, :cond_53

    .line 390
    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->checkNanoappPermsAsync()V

    .line 394
    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mContextHubProxy:Lcom/android/server/location/contexthub/IContextHubWrapper;

    iget-short v3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mHostEndPointId:S

    iget-object v4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 395
    invoke-virtual {v4}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v4

    .line 394
    invoke-virtual {v0, v3, v4, p1}, Lcom/android/server/location/contexthub/IContextHubWrapper;->sendMessageToContextHub(SILandroid/hardware/location/NanoAppMessage;)I

    move-result p0
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_61} :catch_63

    move v2, p0

    goto :goto_89

    :catch_63
    move-exception p1

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException in sendMessageToNanoApp (target hub ID = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttachedContextHubInfo:Landroid/hardware/location/ContextHubInfo;

    .line 398
    invoke-virtual {p0}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_89

    :cond_84
    const-string p0, "Failed to send message to nanoapp: client connection is closed"

    .line 402
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_89
    return v2
.end method

.method public final declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 817
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 818
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 820
    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendPendingIntent(Ljava/util/function/Supplier;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Intent;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 829
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->hasPendingIntent()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    .line 830
    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-nez p2, :cond_22

    .line 831
    iget-object p2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {p2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->doSendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 833
    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setAttributionTag(Ljava/lang/String;)V
    .registers 2

    .line 453
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    return-void
.end method

.method public final startMonitoringOpChanges()V
    .registers 4

    .line 358
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ContextHubClient "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "endpointID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getHostEndPointId()S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "contextHub: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttachedContextHubId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 931
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_59

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "attributionTag: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 934
    :cond_59
    iget-object v2, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v2}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->isValid()Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 935
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "intentCreatorPackage: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "nanoAppId: 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPendingIntentRequest:Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;

    invoke-virtual {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$PendingIntentRequest;->getNanoAppId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b2

    .line 938
    :cond_9b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "package: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 940
    :goto_b2
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_142

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " messageChannelNanoappSet: ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 943
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 944
    :cond_d5
    :goto_d5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_131

    .line 945
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 946
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0x"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " auth state: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->authStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 948
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d5

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d5

    .line 952
    :cond_131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    :cond_142
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateNanoAppAuthState(JLjava/util/List;Z)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    .line 679
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->updateNanoAppAuthState(JLjava/util/List;ZZ)I

    move-result p0

    return p0
.end method

.method public updateNanoAppAuthState(JLjava/util/List;ZZ)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)I"
        }
    .end annotation

    .line 700
    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    monitor-enter v0

    .line 703
    :try_start_3
    invoke-virtual {p0, p3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->hasPermissions(Ljava/util/List;)Z

    move-result p3

    .line 705
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    .line 706
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 705
    invoke-interface {v1, v2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v3, :cond_2d

    .line 712
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    :cond_2d
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p5, :cond_51

    .line 721
    iget-object p5, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {p5, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3e

    goto :goto_51

    :cond_3e
    if-eqz p4, :cond_43

    if-ne v1, v4, :cond_4f

    goto :goto_5a

    :cond_43
    if-ne v1, v2, :cond_49

    if-nez p3, :cond_49

    move v3, v4

    goto :goto_5a

    :cond_49
    if-eq v1, v2, :cond_4f

    if-eqz p3, :cond_4f

    move v3, v2

    goto :goto_5a

    :cond_4f
    move v3, v1

    goto :goto_5a

    .line 723
    :cond_51
    :goto_51
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mForceDeniedNapps:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_5a
    if-eq v3, v4, :cond_6e

    .line 737
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    if-eqz p3, :cond_85

    .line 739
    invoke-virtual {p3}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->cancel()V

    goto :goto_85

    :cond_6e
    if-ne v1, v2, :cond_85

    .line 742
    new-instance p3, Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 743
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p0, p1, p2, p4}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;-><init>(Lcom/android/server/location/contexthub/ContextHubClientBroker;JLandroid/os/Looper;)V

    .line 744
    iget-object p4, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mNappToAuthTimerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-interface {p4, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-virtual {p3}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->start()V

    :cond_85
    :goto_85
    if-eq v1, v3, :cond_94

    .line 749
    iget-object p3, p0, Lcom/android/server/location/contexthub/ContextHubClientBroker;->mMessageChannelNanoappIdMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    :cond_94
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_3 .. :try_end_95} :catchall_9b

    if-eq v1, v3, :cond_9a

    .line 754
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->sendAuthStateCallback(JI)V

    :cond_9a
    return v3

    :catchall_9b
    move-exception p0

    .line 751
    :try_start_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    throw p0
.end method
