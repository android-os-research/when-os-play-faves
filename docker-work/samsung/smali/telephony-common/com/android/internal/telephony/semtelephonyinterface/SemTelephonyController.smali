.class public Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;
.super Lcom/android/internal/telephony/ISemTelephony$Stub;
.source "SemTelephonyController.java"


# static fields
.field private static final blacklist mProduct:Ljava/lang/String;


# instance fields
.field private final blacklist mAppOps:Landroid/app/AppOpsManager;

.field private final blacklist mCallManager:Lcom/android/internal/telephony/CallManager;

.field private final greylist mContext:Landroid/content/Context;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private final blacklist mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

.field private final blacklist mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-string v0, "ro.product.model"

    const-string v1, "Unknown"

    .line 112
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mProduct:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    .line 121
    invoke-direct {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;-><init>()V

    const-string v0, "SemTelephonyController start"

    .line 122
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    const-string v0, "isemtelephony"

    .line 123
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_13

    .line 124
    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 126
    :cond_13
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    .line 127
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mAppOps:Landroid/app/AppOpsManager;

    .line 128
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 130
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 131
    new-instance p1, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-direct {p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    return-void
.end method

.method private blacklist checkNrCondition(Lcom/android/internal/telephony/Phone;)Z
    .registers 2

    .line 1424
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result p0

    const/high16 p1, 0x80000

    and-int/2addr p0, p1

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method private blacklist createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 232
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist enforceModifyPermission()V
    .registers 3

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist enforceModifyPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    .registers 5

    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "No modify permission, check carrier privilege next"

    .line 182
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private blacklist enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    .registers 5

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "No read privileged phone permission, check carrier privilege next"

    .line 167
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method private greylist getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultSubscription()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_b

    goto :goto_f

    .line 154
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    :goto_f
    return-object p0
.end method

.method private greylist getDefaultSubscription()I
    .registers 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 148
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultSubscription()I

    move-result p0

    return p0
.end method

.method private greylist getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 139
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 140
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result p1

    if-nez p1, :cond_b

    const/4 p0, 0x0

    .line 143
    :cond_b
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 5

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    .line 219
    new-instance v0, Landroid/os/WorkSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private blacklist locationInfomation(Ljava/lang/String;)Z
    .registers 2

    .line 1136
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cellid"

    .line 1138
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "cell_id"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1f

    const-string p1, "pci"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method private greylist log(Ljava/lang/String;)V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    const-string p0, "SemTelephonyController"

    .line 204
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist loge(Ljava/lang/String;)V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    const-string p0, "SemTelephonyController"

    .line 209
    invoke-static {p0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private greylist logi(Ljava/lang/String;)V
    .registers 2
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    return-void
.end method

.method private blacklist writeDataToTelephonyDb(IILjava/lang/String;)V
    .registers 6

    .line 1384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrMode - mode: "

    .line 1385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", callingPackage: "

    .line 1386
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1389
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_31

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 p2, 0x0

    .line 1391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p1, p2

    const-string p2, "nr_mode_changed"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/SemPhoneInternal;->writeDataToTelephonyDb(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_31
    return-void
.end method


# virtual methods
.method public blacklist NSRI_requestProc(I[B)[B
    .registers 3

    .line 1040
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->NSRI_requestProc(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .line 883
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 884
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->changeIccSimPersoPasswordForSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist changeIccSimPersoPasswordForSubId(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 889
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 894
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v3, 0x53

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 896
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 895
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 897
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "< changeIccSimPersoPassword "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_32} :catch_38
    .catchall {:try_start_7 .. :try_end_32} :catchall_36

    .line 902
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_36
    move-exception p0

    goto :goto_52

    :catch_38
    move-exception p1

    .line 900
    :try_start_39
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "changeIccSimPersoPassword. Exception e ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_39 .. :try_end_4d} :catchall_36

    .line 902
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_52
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 903
    throw p0
.end method

.method public blacklist checkCallControl(ILjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "checkCallControl"

    .line 967
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    .line 969
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x59

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 970
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkCallControl response : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_23

    move-object v0, p1

    goto :goto_25

    :cond_23
    const-string v0, "xxxx"

    :goto_25
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    return-object p1
.end method

.method public blacklist checkNSRIUSIMstate_int()I
    .registers 1

    .line 1034
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->checkNSRIUSIMstate_int()I

    move-result p0

    return p0
.end method

.method public blacklist dialForSubscriber(ILjava/lang/String;)V
    .registers 6

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 309
    :try_start_18
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_49

    if-nez p2, :cond_22

    .line 322
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 315
    :cond_22
    :try_start_22
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    .line 316
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v2, :cond_45

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v2, :cond_45

    .line 317
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    .line 318
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_45
    .catchall {:try_start_22 .. :try_end_45} :catchall_49

    .line 322
    :cond_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_49
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 323
    throw p0
.end method

.method public blacklist enforceReadPermission()V
    .registers 3

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.READ_PHONE_STATE"

    const-string v1, "Requires READ_PHONE_STATE"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getActivationDay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p1, "getActivationDate() "

    .line 527
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 p2, 0x4d

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 530
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "timeString - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    return-object p1
.end method

.method public blacklist getAllCellInfoBySubId(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 275
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 280
    invoke-virtual {v1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 281
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 282
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const-string p3, "getCellInfo"

    .line 284
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 285
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const/16 v1, 0x1d

    .line 286
    invoke-virtual {p2, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 287
    invoke-virtual {p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p2

    .line 278
    invoke-static {v0, p2}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p2

    .line 289
    sget-object v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, p3, :cond_65

    const/4 p3, 0x2

    if-eq p2, p3, :cond_5f

    .line 295
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 293
    :cond_5f
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 291
    :cond_65
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to access cell location"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAtr(I)[B
    .registers 5

    const-string v0, "getAtrUsingSubId"

    .line 942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_19

    .line 944
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_11} :catch_12

    goto :goto_19

    .line 946
    :catch_12
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    :goto_19
    const-string v0, "SIM_GET_ATR "

    .line 950
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v1, 0x4b

    .line 952
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM_GET_ATR resp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    if-eqz p1, :cond_53

    .line 955
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_53

    .line 957
    :try_start_49
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_4d} :catch_4e

    goto :goto_53

    :catch_4e
    const-string p1, "Invalid format of the response string"

    .line 959
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :cond_53
    :goto_53
    return-object v2
.end method

.method public blacklist getCdmaMinForOtasp(I)Ljava/lang/String;
    .registers 4

    .line 919
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "getCdmaMinForOtasp"

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 922
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 924
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 926
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_1e

    .line 932
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :cond_19
    const/4 p0, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    throw p0
.end method

.method public blacklist getCellLocationBySubId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .registers 7

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 240
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 245
    invoke-virtual {v1, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 247
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 248
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const-string v1, "getCellLocation"

    .line 249
    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const/4 v1, 0x1

    .line 250
    invoke-virtual {p3, v1}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    const/16 v2, 0x1d

    .line 251
    invoke-virtual {p3, v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p3

    .line 252
    invoke-virtual {p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p3

    .line 243
    invoke-static {v0, p3}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p3

    .line 253
    sget-object v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController$1;->$SwitchMap$android$telephony$LocationAccessPolicy$LocationPermissionResult:[I

    invoke-virtual {p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ordinal()I

    move-result p3

    aget p3, v0, p3

    if-eq p3, v1, :cond_ac

    const/4 v0, 0x2

    if-eq p3, v0, :cond_96

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object p2

    .line 262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_7a
    const-string p3, "getCellLocation: is active user"

    .line 264
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 265
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 p3, 0x4f

    .line 266
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 265
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentity;
    :try_end_8d
    .catchall {:try_start_7a .. :try_end_8d} :catchall_91

    .line 268
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_91
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    throw p0

    .line 257
    :cond_96
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p0

    if-ne p0, v0, :cond_a6

    .line 258
    new-instance p0, Landroid/telephony/CellIdentityCdma;

    invoke-direct {p0}, Landroid/telephony/CellIdentityCdma;-><init>()V

    goto :goto_ab

    :cond_a6
    new-instance p0, Landroid/telephony/CellIdentityGsm;

    invoke-direct {p0}, Landroid/telephony/CellIdentityGsm;-><init>()V

    :goto_ab
    return-object p0

    .line 255
    :cond_ac
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to access cell location"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getCurrentUATI()[B
    .registers 4

    const-string v0, "getCurrentUATI()"

    .line 1062
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1064
    :try_start_5
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    const/16 v1, 0xc

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->getCommendToRILInfo(II)Ljava/lang/String;

    move-result-object v0

    .line 1066
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1067
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getDataRoamingEnabled()Z
    .registers 1

    .line 1046
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDataRoamingEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist getDisable2g()I
    .registers 3

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 394
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v0, 0x47

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-eqz p0, :cond_14

    const/4 v0, 0x0

    .line 395
    aget p0, p0, v0

    goto :goto_15

    :cond_14
    const/4 p0, -0x1

    :goto_15
    return p0
.end method

.method public blacklist getEuimid()Ljava/lang/String;
    .registers 1

    .line 910
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getEuimid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFDNavailable(I)Z
    .registers 2

    .line 1187
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getFDNavailable()Z

    move-result p0

    return p0
.end method

.method public blacklist getFeliCaUimLockStatus(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getIccUsimPersoEnabled()Z
    .registers 2

    .line 838
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 839
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getIccUsimPersoEnabledForSubId(I)Z

    move-result p0

    return p0
.end method

.method public blacklist getIccUsimPersoEnabledForSubId(I)Z
    .registers 4

    .line 844
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIccUsimPersoEnabledForSubId subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 847
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_24

    const-string p1, "getIccUsimPersoEnabledForSubId : invalid phone"

    .line 849
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 852
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getMobileQualityInformation(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, ";"

    .line 1075
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1076
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1080
    :try_start_16
    iget-object v4, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "getMobileQualityInformation enforcePrivilegedPhoneStatePermission"

    .line 1082
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_16 .. :try_end_22} :catch_23

    goto :goto_68

    .line 1084
    :catch_23
    iget-object v4, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 1087
    invoke-virtual {v5, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1088
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingFeatureId(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1089
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const-string p3, "getMobileQualityInformation"

    .line 1091
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1092
    invoke-virtual {p2, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    const/16 p3, 0x1d

    .line 1093
    invoke-virtual {p2, p3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object p2

    .line 1094
    invoke-virtual {p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object p2

    .line 1085
    invoke-static {v4, p2}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p2

    .line 1095
    sget-object p3, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    if-ne p2, p3, :cond_5f

    goto :goto_60

    :cond_5f
    move v3, v2

    .line 1098
    :goto_60
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    const-string p2, "getMobileQualityInformation enforceReadPermission"

    .line 1099
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 1103
    :goto_68
    :try_start_68
    iget-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 p3, 0x5b

    .line 1104
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1106
    iget-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_78} :catch_d4

    const-string p3, ""

    if-nez p2, :cond_88

    :try_start_7c
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_88

    .line 1108
    check-cast p1, [B

    .line 1109
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    goto :goto_89

    :cond_88
    move-object p2, p3

    .line 1112
    :goto_89
    sget-boolean p1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez p1, :cond_a1

    .line 1113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMobileQualityInformation Good Job:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :cond_a1
    if-nez v3, :cond_d3

    .line 1119
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move p2, v2

    .line 1121
    :goto_a8
    array-length v3, p1

    if-ge p2, v3, :cond_d2

    .line 1122
    aget-object v3, p1, p2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1124
    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->locationInfomation(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_cf

    .line 1125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, p2

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_cf} :catch_d4

    :cond_cf
    add-int/lit8 p2, p2, 0x1

    goto :goto_a8

    :cond_d2
    move-object p2, p3

    :cond_d3
    return-object p2

    :catch_d4
    return-object v1
.end method

.method public blacklist getNetworkStatusDisplayOption(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    .line 536
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 537
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "getNetworkStatusDisplayOption"

    .line 536
    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    const/4 p0, -0x1

    return p0

    .line 541
    :cond_14
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "mobile_network_status"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public blacklist getNrMode(I)I
    .registers 6

    const/4 v0, 0x0

    .line 1283
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "getNrMode enforcePrivilegedPhoneStatePermission"

    .line 1284
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_16

    .line 1286
    :catch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    const-string v1, "getNrMode enforceModifyPermission"

    .line 1287
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :goto_16
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2e

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNrMode: Invalid phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v1

    .line 1295
    :cond_2e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNrMode with phoneId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1297
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 1298
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->checkNrCondition(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 1299
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v0, 0x55

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [I

    :cond_5d
    if-eqz v0, :cond_62

    const/4 p0, 0x0

    .line 1302
    aget v1, v0, p0

    :cond_62
    return v1
.end method

.method public blacklist getSdnAvailable()Z
    .registers 1

    .line 648
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getSdnAvailable()Z

    move-result p0

    return p0
.end method

.method public blacklist getServiceStateForPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;
    .registers 12

    .line 578
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 583
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 584
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    const-string v4, "getServiceStateForPhoneId"

    .line 583
    invoke-static {v2, v3, p2, p3, v4}, Lcom/android/internal/telephony/TelephonyPermissions;->checkCallingOrSelfReadPhoneState(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_17

    return-object v1

    .line 589
    :cond_17
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 592
    invoke-virtual {v2, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v2

    .line 593
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v2

    .line 594
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v2

    .line 595
    invoke-virtual {v2, v4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 596
    invoke-virtual {v2, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v2

    const/16 v5, 0x1d

    .line 597
    invoke-virtual {v2, v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v2

    .line 598
    invoke-virtual {v2, v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v2

    .line 599
    invoke-virtual {v2, v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v2

    .line 600
    invoke-virtual {v2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v2

    .line 590
    invoke-static {p3, v2}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object p3

    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    invoke-direct {v6}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;-><init>()V

    .line 605
    invoke-virtual {v6, p2}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPackage(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v6

    .line 606
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingPid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v6

    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setCallingUid(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v6

    .line 608
    invoke-virtual {v6, v4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMethod(Ljava/lang/String;)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v4

    .line 609
    invoke-virtual {v4, v3}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setLogAsInfo(Z)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v4

    .line 610
    invoke-virtual {v4, v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForCoarse(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v4

    const v6, 0x7fffffff

    .line 611
    invoke-virtual {v4, v6}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForFine(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v4

    .line 612
    invoke-virtual {v4, v5}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->setMinSdkVersionForEnforcement(I)Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;

    move-result-object v4

    .line 613
    invoke-virtual {v4}, Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery$Builder;->build()Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;

    move-result-object v4

    .line 603
    invoke-static {v2, v4}, Landroid/telephony/LocationAccessPolicy;->checkLocationPermission(Landroid/content/Context;Landroid/telephony/LocationAccessPolicy$LocationPermissionQuery;)Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    move-result-object v2

    .line 615
    sget-object v4, Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;->ALLOWED:Landroid/telephony/LocationAccessPolicy$LocationPermissionResult;

    const/4 v5, 0x0

    if-ne p3, v4, :cond_92

    move p3, v3

    goto :goto_93

    :cond_92
    move p3, v5

    :goto_93
    if-ne v2, v4, :cond_97

    move v2, v3

    goto :goto_98

    :cond_97
    move v2, v5

    .line 619
    :goto_98
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataServicePackages()Ljava/util/List;

    move-result-object v4

    .line 620
    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 623
    :try_start_a0
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 625
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getServiceStateForPhoneId, phoneId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", serviceState: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    if-nez p3, :cond_d7

    if-eqz p2, :cond_cb

    goto :goto_d7

    :cond_cb
    if-eqz v2, :cond_d2

    .line 630
    invoke-virtual {v0, v5}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p0

    return-object p0

    .line 631
    :cond_d2
    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->createLocationInfoSanitizedCopy(Z)Landroid/telephony/ServiceState;

    move-result-object p0
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_d6} :catch_d8

    return-object p0

    :cond_d7
    :goto_d7
    return-object v0

    :catch_d8
    :cond_d8
    return-object v1
.end method

.method public blacklist getSimPinRetryForSubscriber(I)I
    .registers 3

    const-string v0, "getSimPinRetryForSubscriber"

    .line 806
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 809
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 811
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 813
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccPin1RetryCount()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, -0x1

    :goto_17
    return p0
.end method

.method public blacklist getSimPukRetryForSubscriber(I)I
    .registers 3

    const-string v0, "getSimPukRetryForSubscriber"

    .line 822
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 825
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 827
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 829
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccCard;->getIccPuk1RetryCount()I

    move-result p0

    goto :goto_17

    :cond_16
    const/4 p0, -0x1

    :goto_17
    return p0
.end method

.method public blacklist getSupportedNrca(I)Z
    .registers 2

    .line 1410
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1412
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_d

    .line 1414
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1417
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1418
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfigurationState()Landroid/telephony/VendorConfigurationState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/VendorConfigurationState;->getSupportedNrca()Z

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getUaUap(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 993
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultSubscription()I

    move-result p1

    .line 996
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 998
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 1000
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGroupIdLevel1 phone is null for Subscription:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    move-object p1, v1

    .line 1003
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gid1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist getVendorConfigState(I)Landroid/telephony/VendorConfigurationState;
    .registers 4

    .line 1365
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_a

    .line 1367
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1371
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v1, "getVendorConfigState"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforcePrivilegedPermissionOrCarrierPrivilege(ILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1c

    .line 1373
    :catch_14
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    const-string v0, "getVendorConfigState enforceModifyPermission"

    .line 1374
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1377
    :goto_1c
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    if-eqz p0, :cond_2b

    .line 1378
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfigurationState()Landroid/telephony/VendorConfigurationState;

    move-result-object p0

    return-object p0

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getVoNRMode(I)I
    .registers 5

    .line 1330
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getVoNRMode enforcePrivilegedPhoneStatePermission"

    .line 1331
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    .line 1333
    :catch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    const-string v0, "getVoNRMode enforceModifyPermission"

    .line 1334
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :goto_16
    const/4 v0, 0x0

    .line 1338
    :try_start_17
    iget-object v1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v2, 0x60

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_29} :catch_2a

    goto :goto_2f

    :catch_2a
    const-string p1, "getVoNrMode: Runtime Exception"

    .line 1340
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_2f
    return v0
.end method

.method public blacklist invokeOemRilRequestRawForSubscriber(I[B[B)I
    .registers 6

    .line 1192
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_b0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_b0

    .line 1196
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invokeOemRilRequestRaw: Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Pid : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1202
    :try_start_37
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v1, 0x1b

    .line 1203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1202
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/AsyncResult;

    .line 1204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invokeOemRilRequestRaw: got result "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 1205
    iget-object p2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v0, 0x0

    if-nez p2, :cond_93

    .line 1206
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_af

    .line 1207
    check-cast p1, [B

    .line 1208
    array-length p2, p1

    array-length v1, p3

    if-le p2, v1, :cond_8d

    .line 1209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffer to copy response too small: Response length is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes. Buffer Size is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p3

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bytes."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1213
    :cond_8d
    array-length p2, p1

    invoke-static {p1, v0, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1214
    array-length v0, p1

    goto :goto_af

    .line 1217
    :cond_93
    check-cast p2, Lcom/android/internal/telephony/CommandException;

    .line 1218
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_9d
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_9d} :catch_a0

    if-lez v0, :cond_af

    goto :goto_ad

    :catch_a0
    const-string p1, "invokeOemRilRequestRaw: Runtime Exception"

    .line 1222
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1223
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-lez v0, :cond_af

    :goto_ad
    mul-int/lit8 v0, v0, -0x1

    :cond_af
    :goto_af
    return v0

    :cond_b0
    :goto_b0
    const-string p1, "invokeOemRilRequestRaw: calling Uid is SHELL_UID"

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 1194
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public blacklist isEmergencyNumberBySubId(ILjava/lang/String;Z)Z
    .registers 6

    .line 342
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_a

    .line 344
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    :cond_a
    if-nez p3, :cond_17

    .line 347
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 349
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v1, "isEmergencyNumber(Potential)"

    .line 348
    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfReadPrivilegedPhoneStatePermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 351
    :cond_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    :try_start_1b
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 354
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object p0

    .line 355
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->isEmergencyNumber(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_32

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    .line 360
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_30
    const/4 p0, 0x0

    goto :goto_2c

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    throw p0
.end method

.method public blacklist isMmiForSubscriber(ILjava/lang/String;)Z
    .registers 6

    .line 555
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    const/4 v0, 0x0

    .line 557
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_1f

    .line 559
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMmiForSubscriber: phone is null. subId="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v0

    .line 562
    :cond_1f
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/SemPhoneInternal;->isMmiDialString(Ljava/lang/String;)Z

    move-result p1

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMmiForSubscriber: dialString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " isMmiChecked="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3f} :catch_40

    return p1

    :catch_40
    return v0
.end method

.method public blacklist isSimFDNEnabledForSubscriber(I)Z
    .registers 4

    .line 789
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 792
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 794
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 796
    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard;->getIccFdnEnabled()Z

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    .line 800
    :goto_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FdnEnabled? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return p1
.end method

.method public blacklist isSupportLteCapaOptionC(I)Z
    .registers 2

    .line 1446
    invoke-virtual {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceReadPermission()V

    .line 1448
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_d

    .line 1450
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p1

    .line 1453
    :cond_d
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1454
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfigurationState()Landroid/telephony/VendorConfigurationState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/VendorConfigurationState;->isSupportLteCapaOptionC()Z

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isVideoCall()Z
    .registers 5

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x0

    if-nez v0, :cond_b

    const-string v0, "isVideoCall - mCallManager is null"

    .line 376
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v1

    .line 380
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 382
    iget-object v3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-eqz v0, :cond_23

    .line 384
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_23
    if-eqz v2, :cond_2b

    .line 385
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_33

    :cond_2b
    if-eqz v3, :cond_34

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    const/4 v1, 0x1

    .line 387
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVideoCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return v1
.end method

.method public blacklist reloadTestEmergencyNumber()V
    .registers 5

    .line 366
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_25

    aget-object v2, p0, v1

    .line 367
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    if-eqz v3, :cond_22

    .line 368
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/emergency/SemEmergencyNumberTracker;->loadTestEmergencyNumber(Z)V

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_25
    return-void
.end method

.method public blacklist requestModemActivityInfo(Landroid/os/ResultReceiver;Ljava/lang/String;)V
    .registers 6

    .line 1397
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1398
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getWorkSource(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object p2

    .line 1400
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1402
    :try_start_27
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v2, 0x5c

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestAsync(ILjava/lang/Object;Landroid/os/WorkSource;)V
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_32

    .line 1404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1405
    throw p0
.end method

.method public blacklist sendRequestToRIL([B[BII)I
    .registers 15

    .line 654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_1e4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_1e4

    .line 659
    :cond_11
    invoke-static {p4}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v2, -0x4

    .line 661
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendRequestToRIL > Queue Got arg0 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", arg1 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", arg2 - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " phoneId is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 664
    aget-byte v3, p1, p4

    const/16 v4, 0x16

    const/4 v5, 0x1

    if-eq v3, v4, :cond_74

    .line 665
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendRequestToRIL: Not permitted access. main cmd : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p3, p1, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", sub cmd : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p1, p1, v5

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 666
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    :goto_72
    mul-int/2addr p0, v1

    return p0

    :cond_74
    const-string v3, "0"

    const-string v4, "90"

    const/4 v6, 0x2

    const/4 v7, -0x2

    const-string v8, "sendRequestToRIL: response is null"

    const/16 v9, 0x6f

    packed-switch p3, :pswitch_data_1f2

    .line 743
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendRequestToRIL: unexpected message code: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_1e3

    :pswitch_98
    const-string p3, "ICCPCSC_TRANSMIT"

    .line 727
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 729
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v1, 0x3c

    .line 730
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v1, p1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_d8

    .line 732
    array-length p3, p1

    if-ne p3, v5, :cond_b9

    aget-byte p3, p1, p4

    if-ne p3, v9, :cond_b9

    goto :goto_d8

    .line 736
    :cond_b9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "< ICCPCSC_TRANSMIT : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 737
    array-length p0, p1

    invoke-static {p1, p4, p2, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 738
    array-length v1, p1

    goto/16 :goto_1e3

    .line 733
    :cond_d8
    :goto_d8
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    const/4 v1, -0x5

    goto/16 :goto_1e3

    :pswitch_de
    const-string p2, "ICCPCSC_DISCONNECT"

    .line 710
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    const/4 v1, -0x3

    .line 712
    iget-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 p3, 0x3a

    .line 713
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, p1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_136

    .line 715
    array-length p2, p1

    if-ne p2, v5, :cond_100

    aget-byte p2, p1, p4

    if-ne p2, v9, :cond_100

    goto :goto_136

    .line 719
    :cond_100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "< ICCPCSC_DISCONNECT : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 720
    aget-byte p0, p1, p4

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e3

    aget-byte p0, p1, v5

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e3

    goto/16 :goto_1e2

    .line 716
    :cond_136
    :goto_136
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    goto :goto_195

    :pswitch_13a
    const-string p2, "ICCPCSC_CONNECT"

    .line 693
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 695
    iget-object p2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 p3, 0x38

    .line 696
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, p1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_192

    .line 698
    array-length p2, p1

    if-ne p2, v5, :cond_15b

    aget-byte p2, p1, p4

    if-ne p2, v9, :cond_15b

    goto :goto_192

    .line 702
    :cond_15b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "< ICCPCSC_CONNECT : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 703
    aget-byte p0, p1, v5

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e3

    aget-byte p0, p1, v6

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e3

    .line 704
    aget-byte v1, p1, p4

    goto :goto_1e3

    .line 699
    :cond_192
    :goto_192
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_195
    move v1, v7

    goto :goto_1e3

    :pswitch_197
    const-string p3, "ICCPCSC_POWERUP"

    .line 678
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 679
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v1, 0x36

    .line 680
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v1, p1, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_1d7

    .line 682
    array-length p3, p1

    if-ne p3, v5, :cond_1b8

    aget-byte p3, p1, p4

    if-ne p3, v9, :cond_1b8

    goto :goto_1d7

    .line 686
    :cond_1b8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "< ICCPCSC_POWERUP : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->log(Ljava/lang/String;)V

    .line 687
    aget-byte p0, p1, p4

    add-int/2addr p0, v6

    invoke-static {p1, p4, p2, p4, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1e2

    :cond_1d7
    :goto_1d7
    const-string p1, "sendRequestToRIL: atrInfo is null"

    .line 683
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    const/4 v1, -0x6

    goto :goto_1e3

    :pswitch_1de
    const/4 p0, 0x0

    .line 673
    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_1e2
    move v1, p4

    :cond_1e3
    :goto_1e3
    return v1

    :cond_1e4
    :goto_1e4
    const-string p1, "invokeOemRilRequestRaw: calling Uid is SHELL_UID"

    .line 655
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 656
    sget-object p0, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    goto/16 :goto_72

    nop

    :pswitch_data_1f2
    .packed-switch 0x1
        :pswitch_1de
        :pswitch_197
        :pswitch_1de
        :pswitch_13a
        :pswitch_de
        :pswitch_98
    .end packed-switch
.end method

.method public blacklist sendVolteState(IZ)V
    .registers 9

    .line 1347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_33

    .line 1351
    :cond_f
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    const/4 v0, 0x5

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-byte v3, v1, v2

    const/4 v4, 0x1

    const/16 v5, -0x7f

    aput-byte v5, v1, v4

    aput-byte v2, v1, v3

    const/4 v2, 0x3

    aput-byte v0, v1, v2

    const/4 v0, 0x4

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    .line 1359
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 p2, 0x1b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, v1, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequestAsync(ILjava/lang/Object;Ljava/lang/Integer;)V

    return-void

    :cond_33
    :goto_33
    const-string p1, "sendVolteState: calling Uid is SHELL_UID return"

    .line 1348
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setAllowDataDuringCall(I)V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    .line 330
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "setAllowDataDuringCall"

    .line 329
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/TelephonyPermissions;->enforceCallingOrSelfModifyPermissionOrCarrierPrivilege(Landroid/content/Context;ILjava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forcing DATA_PREFERRED_IN_VOICECALL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemTelephonyController"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 334
    :try_start_29
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "data_preferred_mode_during_calling"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_38

    .line 336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_38
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    throw p0
.end method

.method public blacklist setDisable2g(I)Z
    .registers 3

    .line 400
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 401
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v0, 0x49

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist setEPSLOCI([B)V
    .registers 4

    .line 773
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    const/4 v1, 0x0

    .line 774
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermissionOrCarrierPrivilege(ILjava/lang/String;)V

    const-string v0, "> setEPSLOCI"

    .line 776
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 777
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/IccCard;->setEPSLOCI([B)V

    .line 778
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v0, 0x42

    .line 779
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< setEPSLOCI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 1051
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 1052
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1054
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->setGbaBootstrappingParams(Lcom/android/internal/telephony/Phone;[BLjava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    .line 1056
    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setGbaBootstrappingParams: phone is null for Subscription:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_23
    return-void
.end method

.method public blacklist setIccSimPersoEnabled(ZLjava/lang/String;)Z
    .registers 4

    .line 857
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 858
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->setIccSimPersoEnabledForSubId(IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist setIccSimPersoEnabledForSubId(IZLjava/lang/String;)Z
    .registers 9

    .line 863
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 868
    :try_start_7
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 v3, 0x51

    new-instance v4, Landroid/util/Pair;

    .line 870
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v4, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 869
    invoke-virtual {v2, v3, v4, p1}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 871
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "< setIccSimPersoEnabled "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_3c
    .catchall {:try_start_7 .. :try_end_36} :catchall_3a

    .line 876
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3a
    move-exception p0

    goto :goto_56

    :catch_3c
    move-exception p1

    .line 874
    :try_start_3d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setIccSimPersoEnabled. Exception e ="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_3d .. :try_end_51} :catchall_3a

    .line 876
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    throw p0
.end method

.method public blacklist setNrMode(IIZLjava/lang/String;)Z
    .registers 12

    .line 1232
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setNrMode enforcePrivilegedPhoneStatePermission"

    .line 1233
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    .line 1235
    :catch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    const-string v0, "setNrMode enforceModifyPermission"

    .line 1236
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :goto_16
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2f

    .line 1242
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setNrMode: Invalid phoneId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    return v1

    :cond_2f
    const v0, 0x7fffffff

    const/16 v2, 0x56

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne p1, v0, :cond_6e

    move p3, v1

    move v0, p3

    .line 1247
    :goto_3b
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v6

    if-ge p3, v6, :cond_6c

    .line 1248
    invoke-static {p3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    if-eqz v6, :cond_69

    .line 1249
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->checkNrCondition(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_52

    goto :goto_69

    :cond_52
    new-array v0, v4, [I

    aput p2, v0, v1

    aput p3, v0, v5

    aput v1, v0, v3

    .line 1256
    iget-object v6, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-virtual {v6, v2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_69

    return v1

    :cond_69
    :goto_69
    add-int/lit8 p3, p3, 0x1

    goto :goto_3b

    :cond_6c
    move v1, v0

    goto :goto_92

    .line 1262
    :cond_6e
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_92

    .line 1263
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->checkNrCondition(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_92

    new-array v0, v4, [I

    aput p2, v0, v1

    aput p1, v0, v5

    aput p3, v0, v3

    .line 1268
    iget-object p3, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    invoke-virtual {p3, v2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_91

    return v1

    :cond_91
    move v1, p3

    .line 1275
    :cond_92
    :goto_92
    invoke-direct {p0, p1, p2, p4}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->writeDataToTelephonyDb(IILjava/lang/String;)V

    return v1
.end method

.method public blacklist setTransmitPowerExt(JZ)Z
    .registers 10

    const-string v0, "setTransmitPowerExt finally: exception: "

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransmitPowerExt: powerLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 477
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 478
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0xd

    const/16 v4, 0x11

    const/4 v5, 0x0

    .line 483
    :try_start_30
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x82

    .line 484
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 485
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 486
    invoke-virtual {v2, p3}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 487
    invoke-virtual {v2, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 489
    sget-object p1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mProduct:Ljava/lang/String;

    const-string p2, "SM-M34"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_6f

    move p1, v5

    .line 490
    :goto_4e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ge p1, v3, :cond_8d

    .line 491
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_6c

    const-string p1, "setTransmitPowerExt for SM-M34"

    .line 493
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_6a} :catch_ae
    .catchall {:try_start_30 .. :try_end_6a} :catchall_ac

    move v5, p3

    goto :goto_8d

    :cond_6c
    add-int/lit8 p1, p1, 0x1

    goto :goto_4e

    :cond_6f
    move p1, v5

    .line 501
    :goto_70
    :try_start_70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    if-ge v5, v3, :cond_8c

    .line 502
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-nez v3, :cond_81

    goto :goto_89

    .line 506
    :cond_81
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_88} :catch_a8
    .catchall {:try_start_70 .. :try_end_88} :catchall_ac

    move p1, p3

    :goto_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_8c
    move v5, p1

    .line 514
    :cond_8d
    :goto_8d
    :try_start_8d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 515
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_93} :catch_94

    goto :goto_d1

    :catch_94
    move-exception p1

    .line 517
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    goto :goto_d1

    :catch_a8
    move-exception p2

    move v5, p1

    move-object p1, p2

    goto :goto_af

    :catchall_ac
    move-exception p1

    goto :goto_d2

    :catch_ae
    move-exception p1

    .line 511
    :goto_af
    :try_start_af
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setTransmitPowerExt: exception: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_af .. :try_end_c3} :catchall_ac

    .line 514
    :try_start_c3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 515
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c9} :catch_ca

    goto :goto_d1

    :catch_ca
    move-exception p1

    .line 517
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9a

    :goto_d1
    return v5

    .line 514
    :goto_d2
    :try_start_d2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 515
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d8} :catch_d9

    goto :goto_ec

    :catch_d9
    move-exception p2

    .line 517
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 519
    :goto_ec
    throw p1
.end method

.method public blacklist setTransmitPowerWithFlag(IZ)Z
    .registers 10

    const-string v0, "setTransmitPowerWithFlag finally: exception: "

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTransmitPowerWithFlag: powerLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 417
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 418
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x9

    const/16 v4, 0x11

    const/4 v5, 0x0

    .line 423
    :try_start_30
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x82

    .line 424
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 425
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 426
    invoke-virtual {v2, p2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 427
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 429
    sget-object p1, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mProduct:Ljava/lang/String;

    const-string p2, "SM-M34"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_6f

    move p1, v5

    .line 430
    :goto_4e
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    if-ge p1, v4, :cond_8d

    .line 431
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-eqz v4, :cond_6c

    const-string p1, "setTransmitPowerWithFlag for SM-M34"

    .line 433
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_6a} :catch_ae
    .catchall {:try_start_30 .. :try_end_6a} :catchall_ac

    move v5, v3

    goto :goto_8d

    :cond_6c
    add-int/lit8 p1, p1, 0x1

    goto :goto_4e

    :cond_6f
    move p1, v5

    .line 441
    :goto_70
    :try_start_70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    if-ge v5, v4, :cond_8c

    .line 442
    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_81

    goto :goto_89

    .line 446
    :cond_81
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v4, v6, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_88} :catch_a8
    .catchall {:try_start_70 .. :try_end_88} :catchall_ac

    move p1, v3

    :goto_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_70

    :cond_8c
    move v5, p1

    .line 454
    :cond_8d
    :goto_8d
    :try_start_8d
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 455
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_93} :catch_94

    goto :goto_d1

    :catch_94
    move-exception p1

    .line 457
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_9a
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    goto :goto_d1

    :catch_a8
    move-exception p2

    move v5, p1

    move-object p1, p2

    goto :goto_af

    :catchall_ac
    move-exception p1

    goto :goto_d2

    :catch_ae
    move-exception p1

    .line 451
    :goto_af
    :try_start_af
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTransmitPowerWithFlag: exception: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_af .. :try_end_c3} :catchall_ac

    .line 454
    :try_start_c3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 455
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c9} :catch_ca

    goto :goto_d1

    :catch_ca
    move-exception p1

    .line 457
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9a

    :goto_d1
    return v5

    .line 454
    :goto_d2
    :try_start_d2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 455
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d8} :catch_d9

    goto :goto_ec

    :catch_d9
    move-exception p2

    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    .line 459
    :goto_ec
    throw p1
.end method

.method public blacklist setVoNRMode(II)Z
    .registers 6

    .line 1308
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "setVoNRMode enforcePrivilegedPhoneStatePermission"

    .line 1309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_16

    .line 1311
    :catch_e
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    const-string v0, "setVoNRMode enforceModifyPermission"

    .line 1312
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    :goto_16
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p1, v0, p2

    .line 1320
    :try_start_1f
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyHandler:Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;

    const/16 p2, 0x5e

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/semtelephonyinterface/handler/SemTelephonyHandler;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2d
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_2d} :catch_2e

    goto :goto_33

    :catch_2e
    const-string p1, "setVoNRMode: Runtime Exception"

    .line 1322
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->loge(Ljava/lang/String;)V

    :goto_33
    return v1
.end method

.method public blacklist sms_NSRI_decryptsms(I[B)[B
    .registers 3

    .line 1024
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->sms_NSRI_decryptsms(I[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B
    .registers 4

    .line 1029
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist sms_NSRI_encryptsms(ILjava/lang/String;[B)[B
    .registers 4

    .line 1019
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist supplyPerso(Ljava/lang/String;)Z
    .registers 3

    .line 753
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 754
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->supplyPersoForSubId(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist supplyPersoForSubId(ILjava/lang/String;)Z
    .registers 5

    .line 759
    invoke-direct {p0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->enforceModifyPermission()V

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "supplyPersoForSubId subId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    .line 762
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->getPhoneFromSubId(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_24

    const-string p1, "supplyPersoForSubId : invalid phone"

    .line 764
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->logi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 767
    :cond_24
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;->mSemTelephonyThreadManager:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonyThreadManager;->supplyPerso(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
