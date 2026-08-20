.class public Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;
.super Ljava/lang/Object;
.source "DualDARPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dualdar/DualDARPolicy;
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

    .line 1050
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 1

    .line 1055
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    .line 1063
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 1059
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
