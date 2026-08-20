.class public Lcom/android/server/StorageManagerService$PackageInstalledMap;
.super Ljava/lang/Object;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageInstalledMap"
.end annotation


# instance fields
.field public final external:Z

.field public final id:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;)V
    .registers 3

    .line 602
    iput-object p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    iput-object p2, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    const/4 p1, 0x1

    .line 604
    iput-boolean p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/StorageManagerService;Ljava/lang/String;Z)V
    .registers 4

    .line 597
    iput-object p1, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    iput-object p2, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    .line 599
    iput-boolean p3, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->external:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 608
    instance-of v0, p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    if-eqz v0, :cond_f

    .line 610
    check-cast p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;

    .line 612
    iget-object p0, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 618
    iget-object p0, p0, Lcom/android/server/StorageManagerService$PackageInstalledMap;->id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
