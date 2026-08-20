.class public Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;
.super Ljava/lang/Object;
.source "RestrictionPolicyOberver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    }
.end annotation


# static fields
.field public static final BLOCKED_FELICA:I = 0x2

.field public static final NON_BLOCKED:I

.field public static final TAG:Ljava/lang/String;

.field public static sIsFelicaAllowed:Z

.field public static sNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

.field public static sPendingFelicaNotification:Z


# instance fields
.field public mBootCompleted:Z

.field public final mContext:Landroid/content/Context;

.field public mFelicaReceiver:Landroid/content/BroadcastReceiver;

.field public mFelicaReceiverInitialized:Z


# direct methods
.method public static bridge synthetic -$$Nest$mgetNfcAdapter(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)Landroid/nfc/NfcAdapter;
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetsIsFelicaAllowed()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNfcRestrictionPolicyListener()Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;
    .registers 1

    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputsIsFelicaAllowed(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAccessoryManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    const/4 v0, 0x0

    .line 32
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sPendingFelicaNotification:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    .line 36
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    .line 122
    new-instance v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$1;-><init>(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;)V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiver:Landroid/content/BroadcastReceiver;

    .line 61
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getBlockedType()I
    .registers 1

    .line 47
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    if-nez v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public static isAuthenticatonAllowed()Z
    .registers 1

    .line 54
    sget-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getFelicaPolicy()V
    .registers 5

    .line 104
    invoke-virtual {p0}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 106
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    if-ne v0, v1, :cond_18

    const/4 v0, 0x0

    .line 107
    sput-boolean v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sIsFelicaAllowed:Z

    goto :goto_18

    .line 110
    :cond_11
    sget-object v0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    const-string v2, "Do not call when nfc service is not ready"

    invoke-static {v0, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_18
    :goto_18
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    if-nez v0, :cond_31

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.nfc.AUTH_READY"

    .line 116
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mFelicaReceiverInitialized:Z

    :cond_31
    return-void
.end method

.method public final getNfcAdapter()Landroid/nfc/NfcAdapter;
    .registers 4

    const/4 v0, 0x0

    .line 88
    :try_start_1
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_23

    .line 90
    sget-object v1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->TAG:Ljava/lang/String;

    const-string v2, "NfcAdapter.getDefaultAdapter returns null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_23

    const-string/jumbo p0, "retry, NfcAdapter.getDefaultAdapter returns null"

    .line 93
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    goto :goto_23

    :catch_1f
    move-exception p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_23
    :goto_23
    return-object v0
.end method

.method public onBootCompleted()V
    .registers 2

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    return-void
.end method

.method public setNfcRestrictionPolicyListener(Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;)V
    .registers 2

    .line 43
    sput-object p1, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sNfcRestrictionPolicyListener:Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver$NfcRestrictionPolicyListener;

    return-void
.end method

.method public showFelicaNotification()V
    .registers 3

    .line 75
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mBootCompleted:Z

    if-nez v0, :cond_8

    const/4 p0, 0x1

    .line 76
    sput-boolean p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->sPendingFelicaNotification:Z

    goto :goto_20

    .line 78
    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.applinker.action.FELICA_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.applinker"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x20

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_20
    return-void
.end method
