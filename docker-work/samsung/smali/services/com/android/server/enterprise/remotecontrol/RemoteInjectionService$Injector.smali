.class public Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;
.super Ljava/lang/Object;
.source "RemoteInjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;
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

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getEDMStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 883
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getEnterpriseDeviceManager()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    .line 887
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .registers 2

    .line 879
    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method
