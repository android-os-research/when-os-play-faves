.class public Lcom/android/server/enterprise/dex/DexPolicy$Injector;
.super Ljava/lang/Object;
.source "DexPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dex/DexPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 1

    const-string p0, "application_policy"

    .line 123
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object p0
.end method

.method public getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 109
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/enterprise/dex/DexPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getIWifiPolicy()Lcom/samsung/android/knox/net/wifi/IWifiPolicy;
    .registers 1

    const-string/jumbo p0, "wifi_policy"

    .line 119
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 118
    invoke-static {p0}, Lcom/samsung/android/knox/net/wifi/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/wifi/IWifiPolicy;

    move-result-object p0

    return-object p0
.end method

.method public getRestrictionPolicy()Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .registers 1

    const-string/jumbo p0, "restriction_policy"

    .line 114
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    return-object p0
.end method
