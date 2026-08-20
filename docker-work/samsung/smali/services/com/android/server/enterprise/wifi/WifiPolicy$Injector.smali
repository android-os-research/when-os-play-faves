.class public Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
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

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 1

    const-string p0, "application_policy"

    .line 351
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 343
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
