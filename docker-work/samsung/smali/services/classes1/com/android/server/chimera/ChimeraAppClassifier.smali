.class public Lcom/android/server/chimera/ChimeraAppClassifier;
.super Ljava/lang/Object;
.source "ChimeraAppClassifier.java"


# static fields
.field public static final IMPORTANT_PKG_TYPE_ACTIVE_MUSIC_RECORD:I = 0x40

.field public static final IMPORTANT_PKG_TYPE_ACTIVE_TRAFFIC:I = 0x80

.field public static final IMPORTANT_PKG_TYPE_COCKTAILBAR:I = 0x20000

.field public static final IMPORTANT_PKG_TYPE_DEFAULT_APP:I = 0x400

.field public static final IMPORTANT_PKG_TYPE_DEVICE_ADMIN:I = 0x100

.field public static final IMPORTANT_PKG_TYPE_DISABLE_FORCESTOP:I = 0x10000

.field public static final IMPORTANT_PKG_TYPE_HOME:I = 0x800

.field public static final IMPORTANT_PKG_TYPE_JOBSCHEDULER:I = 0x40000

.field public static final IMPORTANT_PKG_TYPE_LATEST_PROTECTED:I = 0x2

.field public static final IMPORTANT_PKG_TYPE_LOCK_SCREEN:I = 0x2000

.field public static final IMPORTANT_PKG_TYPE_NO_APP_ICON:I = 0x10

.field public static final IMPORTANT_PKG_TYPE_ONGOING_NOTIFICATION:I = 0x4

.field public static final IMPORTANT_PKG_TYPE_RECENTLY_USED:I = 0x1

.field public static final IMPORTANT_PKG_TYPE_RUNNING_LOCATION:I = 0x8000

.field public static final IMPORTANT_PKG_TYPE_SYSTEM:I = 0x4000

.field public static final IMPORTANT_PKG_TYPE_TOP:I = 0x1000

.field public static final IMPORTANT_PKG_TYPE_VPN_SERVICE:I = 0x20

.field public static final IMPORTANT_PKG_TYPE_WALLPAPER:I = 0x200

.field public static final IMPORTANT_PKG_TYPE_WIDGET:I = 0x8

.field public static final PROTECTED_ML_LAUNCH_OOM_ADJ:I = 0x352

.field public static final PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTECTED_SD_LAUNCH_OOM_ADJ:I = 0x35c

.field public static final TAG:Ljava/lang/String; = "ChimeraAppClassifier"

.field public static final mProtectOnBubDisabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mBluetoothUsingUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mLongLiveApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mPackageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemRepository:Lcom/android/server/chimera/SystemRepository;

.field public mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;


# direct methods
.method public static synthetic $r8$lambda$OgcbrtaBlXQNElxXSmz2AbJ77F0(Lcom/android/server/chimera/ChimeraAppClassifier;Ljava/util/Map;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;->lambda$updateBluetoothUsingUidList$0(Ljava/util/Map;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$1;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$1;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    .line 142
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$2;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$2;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 147
    new-instance v0, Lcom/android/server/chimera/ChimeraAppClassifier$3;

    invoke-direct {v0}, Lcom/android/server/chimera/ChimeraAppClassifier$3;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    .line 155
    sget-object v0, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 157
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    .line 161
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    return-void
.end method

.method public static isActiveTrafficApp(Ljava/lang/String;II)Z
    .registers 4

    .line 238
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isActiveTrafficAppForChimera(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$updateBluetoothUsingUidList$0(Ljava/util/Map;)V
    .registers 5

    .line 328
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 330
    iget-object v1, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_8

    :cond_2d
    return-void
.end method


# virtual methods
.method public final clearLongLiveApps()V
    .registers 1

    .line 318
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public getPackageType(Ljava/lang/String;ILjava/util/Set;I)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    const/4 p3, 0x0

    if-eqz p1, :cond_31

    .line 278
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_31

    .line 279
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 283
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/android/server/chimera/ChimeraAppClassifier;->mars2ChimeraType(I)I

    move-result p3

    .line 288
    :cond_31
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 289
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 290
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_51

    or-int/lit16 p3, p3, 0x1000

    .line 296
    :cond_51
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraAppClassifier;->isNeverKilledApp(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_5a

    const/high16 p2, 0x100000

    or-int/2addr p3, p2

    .line 300
    :cond_5a
    invoke-virtual {p0, p4}, Lcom/android/server/chimera/ChimeraAppClassifier;->isBluetoothUsingUid(I)Z

    move-result p2

    if-eqz p2, :cond_63

    const/high16 p2, 0x200000

    or-int/2addr p3, p2

    .line 304
    :cond_63
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/ChimeraAppClassifier;->isProtectOnBubDisabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6c

    const/high16 p0, 0x400000

    or-int/2addr p3, p0

    :cond_6c
    return p3
.end method

.method public final isBluetoothUsingUid(I)Z
    .registers 2

    .line 337
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isLongLiveApp(Ljava/lang/String;I)Z
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mLongLiveApps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    .line 243
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/chimera/SystemRepository;)V

    .line 242
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_37

    .line 245
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isLongLiveApp: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ChimeraAppClassifier"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method public final isNeverKilledApp(Ljava/lang/String;I)Z
    .registers 4

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/android/server/chimera/ChimeraAppClassifier;->isLongLiveApp(Ljava/lang/String;I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 258
    :cond_8
    iget-object p2, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {p2}, Lcom/android/server/chimera/SystemRepository;->isHomeHubDocked()Z

    move-result p2

    if-eqz p2, :cond_19

    sget-object p2, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_WHILE_DOCKING:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_19

    return v0

    :cond_19
    if-eqz p1, :cond_24

    const-string p2, "com.android.cts."

    .line 262
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_24

    return v0

    .line 266
    :cond_24
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object p2, Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p0, p2, :cond_31

    .line 267
    sget-object p0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 269
    :cond_31
    sget-object p0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_FOR_ALL_TRIGGERS:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    sget-object p0, Lcom/android/server/chimera/ChimeraAppClassifier;->PROTECTED_PACKAGES_EXCEPT_FOR_PMM_TRIGGER:Ljava/util/List;

    .line 270
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    goto :goto_43

    :cond_42
    const/4 v0, 0x0

    :cond_43
    :goto_43
    return v0
.end method

.method public final isProtectOnBubDisabled(Ljava/lang/String;)Z
    .registers 2

    .line 341
    sget-object p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mProtectOnBubDisabledList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final mars2ChimeraType(I)I
    .registers 3

    and-int/lit16 p0, p1, 0x400

    if-lez p0, :cond_7

    const/16 p0, 0x10

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    and-int/lit16 v0, p1, 0x200

    if-lez v0, :cond_e

    or-int/lit16 p0, p0, 0x4000

    :cond_e
    and-int/lit16 v0, p1, 0x800

    if-lez v0, :cond_15

    const/high16 v0, 0x10000

    or-int/2addr p0, v0

    :cond_15
    and-int/lit8 v0, p1, 0x10

    if-lez v0, :cond_1c

    const/high16 v0, 0x20000

    or-int/2addr p0, v0

    :cond_1c
    const v0, 0x60120

    and-int/2addr v0, p1

    if-lez v0, :cond_25

    const/high16 v0, 0x40000

    or-int/2addr p0, v0

    :cond_25
    and-int/lit16 v0, p1, 0x2000

    if-lez v0, :cond_2c

    const/high16 v0, 0x800000

    or-int/2addr p0, v0

    :cond_2c
    and-int/lit8 v0, p1, 0x40

    if-lez v0, :cond_32

    or-int/lit16 p0, p0, 0x80

    :cond_32
    and-int/lit16 v0, p1, 0x80

    if-lez v0, :cond_38

    or-int/lit8 p0, p0, 0x20

    :cond_38
    const v0, 0x8000

    and-int/2addr v0, p1

    if-lez v0, :cond_40

    or-int/lit8 p0, p0, 0x40

    :cond_40
    and-int/lit8 v0, p1, 0x8

    if-lez v0, :cond_46

    or-int/lit16 p0, p0, 0x800

    :cond_46
    and-int/lit8 v0, p1, 0x4

    if-lez v0, :cond_4c

    or-int/lit8 p0, p0, 0x8

    :cond_4c
    and-int/lit16 v0, p1, 0x4000

    if-lez v0, :cond_52

    or-int/lit8 p0, p0, 0x2

    :cond_52
    if-eqz p1, :cond_56

    if-nez p0, :cond_58

    :cond_56
    or-int/lit8 p0, p0, 0x1

    :cond_58
    return p0
.end method

.method public prepare(Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mTriggerSource:Lcom/android/server/chimera/ChimeraCommonUtil$TriggerSource;

    .line 313
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppClassifier;->clearLongLiveApps()V

    .line 314
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraAppClassifier;->updateBluetoothUsingUidList()V

    return-void
.end method

.method public final updateBluetoothUsingUidList()V
    .registers 3

    .line 324
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mBluetoothUsingUidList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda1;-><init>()V

    .line 326
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/chimera/ChimeraAppClassifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/chimera/ChimeraAppClassifier;)V

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public updatePackagesType(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-interface {v0, p1}, Lcom/android/server/chimera/SystemRepository;->getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_54

    .line 216
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_54

    .line 217
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_17
    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v2, 0x0

    .line 224
    :try_start_2c
    aget-object v2, v0, v2

    const/4 v3, 0x1

    .line 225
    aget-object v3, v0, v3

    const/4 v4, 0x2

    .line 226
    aget-object v0, v0, v4
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_34} :catch_4c

    .line 231
    iget-object v4, p0, Lcom/android/server/chimera/ChimeraAppClassifier;->mPackageTypeMap:Ljava/util/Map;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :catch_4c
    const-string v0, "ChimeraAppClassifier"

    const-string v1, "NumberFormatException!"

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_54
    return-void
.end method
