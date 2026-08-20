.class public final Lcom/android/nfc_extras/NfcAdapterExtras;
.super Ljava/lang/Object;
.source "NfcAdapterExtras.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;
    }
.end annotation


# static fields
.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field private static final ROUTE_OFF:Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;

.field private static final TAG:Ljava/lang/String; = "NfcAdapterExtras"

.field private static final sNfcExtras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/nfc/NfcAdapter;",
            "Lcom/android/nfc_extras/NfcAdapterExtras;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Landroid/nfc/INfcAdapterExtras;


# instance fields
.field private final mAdapter:Landroid/nfc/NfcAdapter;

.field private final mEmbeddedEe:Lcom/android/nfc_extras/NfcExecutionEnvironment;

.field final mPackageName:Ljava/lang/String;

.field private final mRouteOnWhenScreenOn:Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 63
    new-instance v0, Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;-><init>(ILcom/android/nfc_extras/NfcExecutionEnvironment;)V

    sput-object v0, Lcom/android/nfc_extras/NfcAdapterExtras;->ROUTE_OFF:Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/nfc_extras/NfcAdapterExtras;->sNfcExtras:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Landroid/nfc/NfcAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/nfc/NfcAdapter;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 115
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mPackageName:Ljava/lang/String;

    .line 116
    new-instance v0, Lcom/android/nfc_extras/NfcExecutionEnvironment;

    invoke-direct {v0, p0}, Lcom/android/nfc_extras/NfcExecutionEnvironment;-><init>(Lcom/android/nfc_extras/NfcAdapterExtras;)V

    iput-object v0, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mEmbeddedEe:Lcom/android/nfc_extras/NfcExecutionEnvironment;

    .line 117
    new-instance v1, Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;-><init>(ILcom/android/nfc_extras/NfcExecutionEnvironment;)V

    iput-object v1, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mRouteOnWhenScreenOn:Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;

    .line 119
    return-void
.end method

.method public static get(Landroid/nfc/NfcAdapter;)Lcom/android/nfc_extras/NfcAdapterExtras;
    .registers 6
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .line 94
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_28

    .line 100
    const-class v1, Lcom/android/nfc_extras/NfcAdapterExtras;

    monitor-enter v1

    .line 101
    :try_start_9
    sget-object v2, Lcom/android/nfc_extras/NfcAdapterExtras;->sService:Landroid/nfc/INfcAdapterExtras;

    if-nez v2, :cond_10

    .line 102
    invoke-static {p0}, Lcom/android/nfc_extras/NfcAdapterExtras;->initService(Landroid/nfc/NfcAdapter;)V

    .line 104
    :cond_10
    sget-object v2, Lcom/android/nfc_extras/NfcAdapterExtras;->sNfcExtras:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/nfc_extras/NfcAdapterExtras;

    .line 105
    .local v3, "extras":Lcom/android/nfc_extras/NfcAdapterExtras;
    if-nez v3, :cond_23

    .line 106
    new-instance v4, Lcom/android/nfc_extras/NfcAdapterExtras;

    invoke-direct {v4, p0}, Lcom/android/nfc_extras/NfcAdapterExtras;-><init>(Landroid/nfc/NfcAdapter;)V

    move-object v3, v4

    .line 107
    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_23
    monitor-exit v1

    return-object v3

    .line 110
    .end local v3    # "extras":Lcom/android/nfc_extras/NfcAdapterExtras;
    :catchall_25
    move-exception v2

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw v2

    .line 96
    :cond_28
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "You must pass a context to your NfcAdapter to use the NFC extras APIs"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static initService(Landroid/nfc/NfcAdapter;)V
    .registers 2
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .line 77
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcAdapterExtrasInterface()Landroid/nfc/INfcAdapterExtras;

    move-result-object v0

    .line 78
    .local v0, "service":Landroid/nfc/INfcAdapterExtras;
    if-eqz v0, :cond_8

    .line 80
    sput-object v0, Lcom/android/nfc_extras/NfcAdapterExtras;->sService:Landroid/nfc/INfcAdapterExtras;

    .line 82
    :cond_8
    return-void
.end method


# virtual methods
.method attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 163
    const-string v0, "NfcAdapterExtras"

    const-string v1, "NFC Adapter Extras dead - attempting to recover"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 165
    iget-object v0, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->initService(Landroid/nfc/NfcAdapter;)V

    .line 166
    return-void
.end method

.method public authenticate([B)V
    .registers 4
    .param p1, "token"    # [B

    .line 232
    :try_start_0
    sget-object v0, Lcom/android/nfc_extras/NfcAdapterExtras;->sService:Landroid/nfc/INfcAdapterExtras;

    iget-object v1, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/nfc/INfcAdapterExtras;->authenticate(Ljava/lang/String;[B)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 235
    goto :goto_c

    .line 233
    :catch_8
    move-exception v0

    .line 234
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public getCardEmulationRoute()Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;
    .registers 3

    .line 180
    :try_start_0
    sget-object v0, Lcom/android/nfc_extras/NfcAdapterExtras;->sService:Landroid/nfc/INfcAdapterExtras;

    iget-object v1, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapterExtras;->getCardEmulationRoute(Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "route":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 182
    sget-object v1, Lcom/android/nfc_extras/NfcAdapterExtras;->ROUTE_OFF:Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;

    goto :goto_10

    .line 183
    :cond_e
    iget-object v1, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mRouteOnWhenScreenOn:Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    .line 181
    :goto_10
    return-object v1

    .line 184
    .end local v0    # "route":I
    :catch_11
    move-exception v0

    .line 185
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 186
    sget-object v1, Lcom/android/nfc_extras/NfcAdapterExtras;->ROUTE_OFF:Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;

    return-object v1
.end method

.method public getDriverName()Ljava/lang/String;
    .registers 3

    .line 248
    :try_start_0
    sget-object v0, Lcom/android/nfc_extras/NfcAdapterExtras;->sService:Landroid/nfc/INfcAdapterExtras;

    iget-object v1, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/nfc/INfcAdapterExtras;->getDriverName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 249
    :catch_9
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 251
    const-string v1, ""

    return-object v1
.end method

.method public getEmbeddedExecutionEnvironment()Lcom/android/nfc_extras/NfcExecutionEnvironment;
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mEmbeddedEe:Lcom/android/nfc_extras/NfcExecutionEnvironment;

    return-object v0
.end method

.method getService()Landroid/nfc/INfcAdapterExtras;
    .registers 2

    .line 169
    sget-object v0, Lcom/android/nfc_extras/NfcAdapterExtras;->sService:Landroid/nfc/INfcAdapterExtras;

    return-object v0
.end method

.method public setCardEmulationRoute(Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;)V
    .registers 5
    .param p1, "route"    # Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;

    .line 202
    :try_start_0
    sget-object v0, Lcom/android/nfc_extras/NfcAdapterExtras;->sService:Landroid/nfc/INfcAdapterExtras;

    iget-object v1, p0, Lcom/android/nfc_extras/NfcAdapterExtras;->mPackageName:Ljava/lang/String;

    iget v2, p1, Lcom/android/nfc_extras/NfcAdapterExtras$CardEmulationRoute;->route:I

    invoke-interface {v0, v1, v2}, Landroid/nfc/INfcAdapterExtras;->setCardEmulationRoute(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 205
    goto :goto_e

    .line 203
    :catch_a
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/android/nfc_extras/NfcAdapterExtras;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 206
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
