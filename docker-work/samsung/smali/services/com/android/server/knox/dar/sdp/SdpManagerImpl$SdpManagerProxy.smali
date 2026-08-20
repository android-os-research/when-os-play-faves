.class public Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;
.super Ljava/lang/Object;
.source "SdpManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/SdpManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SdpManagerProxy"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;


# direct methods
.method public static synthetic $r8$lambda$A8IVY9l4oAWVtEjJMmrKAT5J-D8(ILjava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->lambda$setSensitive$0(ILjava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pdcPVQw6hLQYz6M1qyY192043n4(Ljava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->lambda$isSensitive$1(Ljava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V
    .registers 2

    .line 4688
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;-><init>(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)V

    return-void
.end method

.method public static synthetic lambda$isSensitive$1(Ljava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;
    .registers 2

    .line 4696
    invoke-virtual {p1, p0}, Landroid/os/storage/StorageManager;->isSensitive(Ljava/lang/String;)Z

    move-result p0

    .line 4695
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$setSensitive$0(ILjava/lang/String;Landroid/os/storage/StorageManager;)Ljava/lang/Boolean;
    .registers 3

    .line 4691
    invoke-virtual {p2, p0, p1}, Landroid/os/storage/StorageManager;->setSensitive(ILjava/lang/String;)Z

    move-result p0

    .line 4690
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isSensitive(Ljava/lang/String;)Z
    .registers 3

    .line 4695
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetStorageManager(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 4696
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setSensitive(ILjava/lang/String;)Z
    .registers 4

    .line 4690
    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy;->this$0:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl;->-$$Nest$mgetStorageManager(Lcom/android/server/knox/dar/sdp/SdpManagerImpl;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/knox/dar/sdp/SdpManagerImpl$SdpManagerProxy$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 4691
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
