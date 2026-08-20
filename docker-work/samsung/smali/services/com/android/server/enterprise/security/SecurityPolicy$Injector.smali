.class Lcom/android/server/enterprise/security/SecurityPolicy$Injector;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
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

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    .line 246
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getEnterpriseDumpHelper()Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;
    .registers 2

    .line 238
    new-instance v0, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSemEmergencyManager()Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object p0

    return-object p0
.end method

.method public getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 235
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
